<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Category;
use App\Subcategory;

class SubcategoriesController extends Controller
{
   
    public function index( Category $category )
    {
       return $category->id;;
    }

    
    public function create()
    {
       
    }

    
    public function store(Request $request)
    {
        
    }

   
    public function show($id)
    {
        
    }

    
    public function edit($id)
    {


    }

   
    public function update(Request $request, $id)
    {
      
    }

   
    public function destroy($id)
    {
       
    }
}
