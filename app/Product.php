<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
     public function subcategories()
    {
        return $this->belongsTo(Subcategory::class);
    }


     public function sellshistory()
    {
        return $this->hasMany(Sellhistory::class);
    }
}
