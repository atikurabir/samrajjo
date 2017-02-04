<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Subcategory;
use DB;

class Category extends Model
{
    public  function subcategories()
    {
        return $this->hasMany(Subcategory::class);
    }
}
