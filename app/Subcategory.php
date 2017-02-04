<?php

namespace App;
use App\Category;
use App\Product;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
     public function categories()
    {
        return $this->belongsTo(Category::class);
    }
     public function products()
    {
        return $this->hasMany(Product::class);
    }
}
