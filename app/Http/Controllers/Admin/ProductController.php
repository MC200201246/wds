<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Categories;
use App\Models\Tags;
use App\Models\Brands;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    private $type     =  "products";
    private $singular =  "Product";
    private $plural   =  "Products";
    private $view     =  "admin.product.";
    private $action   =  "/admin/product";
    private $db_key   =  "id";
    private $user = [];
    private $perpage = 500;
    private $directory = "product_images";

    function index(Request $request){

    	$data   = array();
        $data   = array(
                    "page_title"=>$this->plural." List",
                    "page_heading"=>$this->plural.' List',
                    "breadcrumbs"=>array("#"=>$this->plural." List")
                );
        if($request->perpage)
            $this->perpage = $request->perpage;
        
        $data['list']   =   Products::with('category','brand')->paginate($this->perpage)->toArray();
        $data['module'] = [
            'type'=>$this->type,
            'singular'=>$this->singular,
            'plural'=>$this->plural,
            'view'=>$this->view,
            'action'=>$this->action,
            'db_key' => $this->db_key
        ];
        ///dd($data);

        return view($this->view.'list',$data);

    	// return view('admin/course_lang/list');
    }
    public function create(Request $request)
    {
        if($request->isMethod('post')){
            $data = $request->all();
            $this->cleanData($data);
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $filename = Storage::putFile($this->directory, $file);
                $data['image'] = asset('storage/').'/'.$filename;
            }
            // Utility::appendRole($data);
            if($request->tags){
                $tags = $request->tags;
                unset($data['tags']);
            }

            $Obj         = new Products;
            $product = $Obj->create($data);
            if(@$tags){
            foreach(@$tags as $tag){
                $tag_obj = Tags::where('id',$tag)->get()->first();
                $product->tags()->attach($tag_obj);
            }

            }
            $response = array('flag'=>true,'msg'=>$this->singular.' is added sucessfully.','action'=>'reload');
            echo json_encode($response); return;
        }
        $data   = array();
        $data   = array(
                    "page_title"=>"Add ".$this->singular,
                    "page_heading"=>"Add ".$this->singular,
                    "button_text"=>"Add ".$this->singular,
                    "breadcrumbs"=>array("dashboard"=>"Dashboard","#"=>$this->plural." List"),
                    "action"=> url($this->action.'/create')
                );
        $data['categories'] = Categories::all()->toArray();
        $data['tags'] = Tags::all()->toArray();
        $data['brands'] = Brands::all()->toArray();
        return view($this->view.'create_edit',$data);
    }
    public function cleanData(&$data) {
        //echo print_r($data); die();
        $unset = ['ConfirmPassword','q','_token'];
        foreach ($unset as $value) {
            if(array_key_exists ($value,$data))  {
                unset($data[$value]);
            }
        }

    }
    
    public function edit(Request $request,$id = NULL)
    {
        if($request->isMethod('post')){
            $data = $request->all();
            $this->cleanData($data);
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $filename = Storage::putFile($this->directory, $file);
                $data['image'] = asset('storage/').'/'.$filename;
            } 
            if($request->tags){
                $tags = $request->tags;
                unset($data['tags']);
            }
            $Obj         = Products::find($id);
            $Obj->update($data);
            foreach($Obj->tags()->get() as $p_tag){
                $Obj->tags()->detach($p_tag->id);
            }
            if(@$tags){
            foreach(@$tags as $tag){
                $tag_obj = Tags::where('id',$tag)->get()->first();
                $Obj->tags()->attach($tag_obj);
            }

            }
            $response = array('flag'=>true,'msg'=>$this->singular.' is updated sucessfully.','action'=>'reload');
            echo json_encode($response); return;
        }
        $id = $request->param;
        $data   = array();
        $data   = array(
                    "page_title"=>"Edit ".$this->singular,
                    "page_heading"=>"Edit ".$this->singular,
                    "button_text"=>"Update ",
                    "breadcrumbs"=>array("dashboard"=>"Dashboard","#"=>$this->plural." List"),
                    "action"=> url($this->action.'/edit/'.$id)
                );

        $data['row'] = Products::with('tags')->where('id',$id)->get()->first()->toArray();
        $data['categories'] = Categories::all()->toArray();
        $data['brands'] = Brands::all()->toArray();
        $data['tags'] = Tags::all()->toArray();
        return view($this->view.'create_edit',$data);
    }
    public function delete($id) {
        Products::destroy($id);
        $response = array('flag'=>true,'msg'=>$this->singular.' has been deleted.');
        echo json_encode($response); return;
    }
}
