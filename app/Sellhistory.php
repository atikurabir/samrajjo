<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sellhistory extends Model
{
    public function products()
    {
        return $this->belongsTo(Product::class);
    }
     public function customers()
    {
        return $this->belongsTo(Customer::class);
    }
}
