<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Categories;
use App\Models\CartItem;
use App\Models\Brands;
use App\Models\Tags;
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
        if(@$request->search == 1){
            if($request->min>$request->max){
                $min = $request->max;
                $max = $request->min;
            }
            else{
                $min = $request->min;
                $max = $request->max;
            }
            if(@$min){
                $records = $records->where('price','>=',$min);
            }
            if(@$max){
                $records = $records->where('price','<=',$max);
            }
            if(@$request->categories){
                $records = $records->whereIn('cat_id',$request->categories);
                $data['searched_categories'] = $request->categories;
            }
            else{
                $records = $records->whereNull('cat_id');
                $data['searched_cagtegories'] = [];
            }
            if(@$request->brands){
                $records = $records->whereIn('brand_id',$request->brands);
                $data['searched_brands'] = $request->brands;
            }
            else{
                $records = $records->whereNull('brand_id');
                $data['searched_brands'] = [];
            }
            $data['search'] = true;
        }
        if(@$request->q){
            $records = $records->where('name','LIKE','%'.@$request->q."%");
            $data['query'] = $request->q;
        }
        $data['count'] = $records->get()->count();
        $records            = $records->paginate($this->perpage);
        $records->appends($request->all())->links();
        $links = $records->links();
        $records = $records->toArray();
        $records['pagination'] = $links;
        $data['max'] = Products::max('price');
        if(@$min){
            $data['selected_min'] = $min;
        }
        else{
            $data['selected_min'] = Products::min('price');
        }
        if(@$max){
            $data['selected_max'] = $max;
        }
        else{
            $data['selected_max'] = Products::max('price');
        }
        $data['selected_max'] = Products::max('price');
        $data['min'] = Products::min('price');
        // dd($data);
        $data['list']   =   $records;
        $data['label']   =   'SHOP';
        $data['categories'] = Categories::all();
        $data['brands'] = Brands::all();
        $data['tags'] = Tags::all()->toArray();
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
        $data['row'] = Products::with('category','brand')->where('id',$id)->get()->first()->toArray();
        return view('product_details', $data);
    }
}
