<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'product';
	protected $primaryKey = 'id';
	public $timestamps = true;
	protected $fillable = ['name','description', 'price','image','brand_id', 'cat_id'];
	public function tags(){
		return $this->belongsToMany('App\\Models\\Tags','product_tags','product_id','tag_id');
	}
	public function category(){
		return $this->belongsTo('App\\Models\\Categories','cat_id');
	}
	public function brand(){
		return $this->belongsTo('App\\Models\\Brands','cat_id');
	}
}
