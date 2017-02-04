@extends('layout')
@section('content')
	
<?php 
use App\Category;
use App\Subcategory;


// $subcategories = Category::find(1)->subcategories;

//         $category = Category::findOrFail(1);
//         $category['subcategories'] = $subcategories;
?>
       <h1> CARD TITLE:{{ $compcategory->cat_name }}</h1>

				<ul class="list-group">
				@foreach( $compcategory->subcategories as $subcat )
				        
				   <li class="list-group-item">
				        {{$subcat->sub_cat_name}}
				        
				   </li>

				@endforeach
				</ul>


<?php
       // return $card;

        //return view('Cards.show', compact('card'));
?>





