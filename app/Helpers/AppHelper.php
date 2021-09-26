<?php
function cart_price(){
	$total_price = 0;
	if(Auth::check()){
		if(Auth::user()->cart_items){
			foreach(Auth::user()->cart_items as $item){
				$total_price += $item->product->price;
			}
		}
	}
	return $total_price.' Rs';
}