<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Http\Requests;
use App\Category;
use DB;


class CategoriesController extends Controller
{
    
    public function index()
    {
        $categories=Category::all();
        return view('category.index', compact('categories'));
     
    }

    
    public function create()
    {
       
    }

    
    public function store(Request $request)
    {
         $category=new Category;
         $category->cat_name=$request->catname;
         $category->save();
          return redirect('/categories');
    }

    
    public function show($id)
    {
        return $category=Category::find($id);
         
    }

   
    public function edit()
    {
        $catID = Input::get('catvalue');
        $category = Category::find($catID); 
        $categories=Category::all();  

        $subcategories = Category::find($catID)->subcategories;
        $compcategory = Category::findOrFail($catID);
        $compcategory['subcategories'] = $subcategories;

        //return $compcategory->subcategories;

        //return view('category.test', compact('compcategory'));

        return view('category.index', compact('category','categories','compcategory'));
     }
   
    public function update(Request $request, Category $category)
    {
        $category->cat_name=$request->updatedcatname;
        $category->save();
        return redirect('/categories');
    }
   
    public function destroy(Category $category)
    {
        Category::destroy($category->id);
        return redirect('/categories');
    }

}
