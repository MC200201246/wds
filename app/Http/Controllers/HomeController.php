<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Categories;
use App\Models\CartItem;
use Auth;

class HomeController extends Controller
{
    private $perpage = 50;
    public function index(){
        $data['featured'] = Products::orderByDesc('id')->limit(6)->get()->toArray();
        
        $data['latest'] = Products::orderBy('created_at')->limit(6)->get()->toArray();
        return view('home',$data);
    }
    public function product_list(Request $request){
        $records   = new Products;
        $records            = $records->paginate($this->perpage);
        $records->appends($request->all())->links();
        $links = $records->links();
        $records = $records->toArray();
        $records['pagination'] = $links;
        $data['list']   =   $records;
        $data['label']   =   'SHOP';
        $data['categories'] = Categories::all()->toArray();
        return view('shop',$data);
    }
    public function product_category(Request $request,$id){
        $records   = Products::where('cat_id',$id);
        $records            = $records->paginate($this->perpage);
        $records->appends($request->all())->links();
        $links = $records->links();
        $records = $records->toArray();
        $records['pagination'] = $links;
        $data['list']   =   $records;
        $data['label'] = Categories::where('id',$id)->get()->first()->name;
        $data['categories'] = Categories::all()->toArray();
        return view('shop',$data);
    }
    public function product_details($id){
        $data['row'] = Products::where('id',$id)->get()->first()->toArray();
        return view('product_details', $data);
    }
}
