<?php

namespace App\Http\Controllers;

use App\Models\Carts;
use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Srmklive\PayPal\Services\PayPal as PayPalClient;

class PaymentController extends Controller
{
    public function handlePayment(Request $request)
    {
        $cart_price=$request->session()->get('cart_price');

        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();
        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('success.payment'),
                "cancel_url" => route('cancel.payment'),
            ],
            "purchase_units" => [
                0 => [
                    "amount" => [
                        "currency_code" => "USD",
                        "value" => $cart_price
                    ]
                ]
            ]
        ]);
        if (isset($response['id']) && $response['id'] != null) {
            foreach ($response['links'] as $links) {
                if ($links['rel'] == 'approve') {
                    return redirect()->away($links['href']);
                }
            }
            return redirect()
                ->route('cancel.payment')
                ->with('error', 'Something went wrong.');
        } else {
            return redirect()
                ->route('create.payment')
                ->with('error', $response['message'] ?? 'Something went wrong.');
        }
    }

    public function paymentCancel()
    {
        return redirect()
            ->route('create.payment')
            ->with('error', $response['message'] ?? 'You have canceled the transaction.');
    }

    public function paymentSuccess(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request['token']);
        
        $request->session()->flash('cart_price', 'Payment was successful!');
        
        if (isset($response['status']) && $response['status'] == 'COMPLETED') {
            
            /**  order update start*/

            $paypalDataStore=[];
            $paypalDataStore[]=[
                'paypaldata'=> $response,
            ];
    
            $order_id=$request->session()->get('order_id');


            $Resource_ID=$response['id'];
            $paypaldata=json_encode($paypalDataStore);

            Orders::where('id',$order_id)->update(['paypal_resource_id'=>$Resource_ID,'paypal_success_response'=>$paypaldata]);
            $request->session()->flash('order_id', 'Payment was successful!');
            Carts::where('user_id',Auth::user()->id)->delete();
    

            //**** order update done */

            return redirect()
                ->route('create.payment')
                ->with('success', 'Transaction complete.');
        } else {
            return redirect()
                ->route('create.payment')
                ->with('error', $response['message'] ?? 'Something went wrong.');
        }

    }

 
}
