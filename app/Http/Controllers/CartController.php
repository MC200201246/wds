<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Categories;
use App\Models\CartItem;
use App\Models\Orders;
use App\Models\OrderItem;
use App\User;
use Auth;

class CartController extends Controller
{
    private $perpage = 50;
    public function __construct(){
        $this->middleware('auth');
    }
    public function add_to_cart(Request $request){
        if($request->isMethod('post')){
            $product = Products::where('id',$request->product_id)->get()->first();
            $data = [
                'product_id' => $request->product_id,
                'unit_price' => $product->price,
                'quantity' => $request->quantity
            ];
            $data['user_id'] = Auth::user()->id;
            CartItem::create($data);
            // dd($request->all());
            if($request->add_to_cart){
                return redirect()->back();
           }
           else{
               return redirect('cart');
           }
        }
    }
    public function cart(){
        
        $data['list'] = CartItem::with('product')->where('is_active',1)->where('user_id',Auth::user()->id)->get()->toArray();
        return view('cart', $data);
    }
    public function orders(){
        
        $data['list'] = Orders::where('customer_id',Auth::user()->id)->get()->toArray();
        return view('order', $data);
    }
    public function remove_cart($id){
        CartItem::where('id',$id)->where('user_id',Auth::user()->id)->delete();
        return redirect()->back();
    }
    public function checkout(){
        $user = Auth::user()->id;
        $data['cart_items'] = CartItem::with('product')->where('is_active',1)->where('user_id',$user)->get()->toArray();
        // dd($data);
        return view('checkout',$data);
    }
    public function place_order(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            $user_id = Auth::user()->id;
            $cart_items =  CartItem::with('product')->where('is_active',1)->where('user_id',$user_id)->get()->toArray();
            $sum = 0;
            foreach($cart_items as $item){
                $sum +=  $item['quantity']* $item['product']['price'];
            }
            $order = Orders::create([
                'card_number' => @$data['card_number'],
                'cvc' => @$data['cvc'],
                'expiry_date' => @$data['expiry_date'],
                'cardholder_name' => @$data['cardholder_name'],
                'address' => @$data['address'],
                'customer_id' => @$user_id,
                'total_price' => @$sum,
                'discount' => 0
            ]);

            foreach($cart_items as $item){
                $orderItem = OrderItem::create([
                    'product_id' => $item['product']['id'],
                    'order_id' => $order->id,
                    'quantity' => $item['quantity'],
                    'unit_price' => $item['product']['price']
                ]);
                CartItem::where('id',$item['id'])->update(['is_active'=>0]);
            }
            return redirect(url('/orders'));
        }
    }
}
