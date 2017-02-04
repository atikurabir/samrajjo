<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    public function sellshistory()
    {
        return $this->hasMany(Sellhistory::class);
    }
}
