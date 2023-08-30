<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{
    PaymentController,
    HomeController
};




Route::controller(HomeController::class)
    ->group(function () {
        Route::get('/', 'Welcome');
        Route::post('/login', 'Login');
        Route::get('/create', 'create');
        Route::get('/logout', 'logout');
        Route::get('/addtocart/{productId}', 'addtocart');
        Route::get('/getCart', 'getCart');
        Route::get('/saveAddress/{address}', 'saveAddress');
    });


Route::controller(PaymentController::class)
    ->prefix('paypal')
    ->group(function () {
        Route::view('payment', 'paypal.index')->name('create.payment');
        Route::get('handle-payment', 'handlePayment')->name('make.payment');
        Route::get('cancel-payment', 'paymentCancel')->name('cancel.payment');
        Route::get('payment-success', 'paymentSuccess')->name('success.payment');
    });
