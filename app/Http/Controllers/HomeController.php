<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Categories;
use App\Models\Products;
use App\Models\User;
use App\Models\Carts;
use App\Models\Orders;
use Illuminate\Http\Request;

use Validator;
use Illuminate\Support\Facades\Auth;
use DB;
// use Auth;
use Session;
use Hash;


class HomeController extends Controller
{
    public function Welcome()
    {
        $categories = Categories::all();
        $brands = Brands::all();

        $product = Products::select('products.*', 'categories.cate_name', 'brands.brand_name')
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->join('brands', 'brands.id', '=', 'products.brand_id')
            ->get();

        return view('welcome', ['categories' => $categories, 'brands' => $brands, 'products' => $product]);
    }

    public function Login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $user = false;

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = true;
        }

        return response()->json([
            'user' => $user,
        ]);
    }

    public function create()
    {
        $user = new User;
        $user->name = 'user';
        $user->email = 'user@gmail.com';
        $user->password = Hash::make('user@gmail.com');
        $user->save();

        return redirect('/');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/');
    }

    public function addtocart(Request $request)
    {
        $user = Auth::user()->id;
        $product = $request->productId;

        $cart = new Carts;
        $cart->user_id = $user;
        $cart->qty = 1;
        $cart->product_id = $product;
        $cart->save();

        return response()->json([
            'status' => true,
            'msg' => 'Added to Cart !',

        ]);
    }

    public function getCart()
    {
        $cart = Carts::select('carts.*', 'products.*')
            ->join('products', 'products.id', '=', 'carts.product_id')
            ->where('carts.user_id', '=', Auth::user()->id)
            ->get();

        return response()->json([
            'status' => true,
            'msg' => 'Fetch Latest Cart !',
            'data' => $cart,
        ]);
    }

    public function saveAddress(Request $request)
    {
        $user = Auth::user()->id;
        $address = $request->address;

        //$cart=$this->getCart();
        $cart = Carts::select('carts.qty', 'products.price', 'products.id')
            ->join('products', 'products.id', '=', 'carts.product_id')
            ->where('carts.user_id', '=', Auth::user()->id)
            ->get();

        $totalPrice = 0;
        $qty_product_id = [];

        foreach ($cart as $key => $value) {
            $totalPrice += $value->price;
            $qty_product_id[] = [
                $value->qty => $value->id,
            ];
        }


        $order = new Orders;
        $order->delivery_address = $address;
        $order->user_id = $user;
        $order->total_price = $totalPrice;
        $order->qty_product_id = json_encode($qty_product_id);


        $order->paypal_resource_id = 0;
        $order->paypal_success_response = 0;
        $order->save();

        $odr_details = Orders::Where('user_id', '=', Auth::user()->id)->orderBy('id', 'DESC')->first();


        $request->session()->put('cart_price', $totalPrice);
        $request->session()->put('order_id', $odr_details->id);

        return response()->json([
            'status' => true,
            'msg' => 'save !',
        ]);
    }
}
