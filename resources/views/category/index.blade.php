@extends('layout')
@section('content')
	<div class="container" >
		<h4>THIS IS INDEX PAGE FOR CATEGORY</h4>
    
    <?PHP   
   if (Request::isMethod('post'))
  {
  	?>
      
      <div>
			   <form method="post" action="/categories/{{ $category->id }}">
			    {{ csrf_field() }}
				  <div class="form-group">
					    <label for="Category Name">Update Category:</label>
					    <input type="text" class="form-control"  value="{{$category->cat_name}}" name="updatedcatname">
				  </div>
			         <button type="submit" class="btn btn-default">Update</button>
			   </form>
		 </div>

		 <div>
			   <form method="post" action="/categories/{{ $category->id }}/delete">
			    {{ csrf_field() }}
			         <button type="submit" class="btn btn-default">Delete</button>
			   </form>
		 </div>


 <?php
  }
?>
  
 
    

  


		 <div>
			   <form method="post" action="/categories">
			    {{ csrf_field() }}
				  <div class="form-group">
					    <label for="email">Add New Category:</label>
					    <input type="text" class="form-control" name="catname">
				  </div>
			         <button type="submit" class="btn btn-default">Add</button>
			   </form>
		 </div>



      <div>
         <form method="post" action="/categories/edit">
               {{ csrf_field() }}
			<select name="catvalue" onchange="submit()">
				<option>Select Category </option>
			    @foreach($categories as $cat)  

			    <option value="{{$cat->id}}" selected="{{$cat->cat_name}}"  >{{$cat->cat_name}} </option>
			   @endforeach
			</select>
		</form>
    </div>


      <!-- SubCategory ------------- -->
   <?PHP   
   if (Request::isMethod('post'))
   {
    ?>
  	  <div>
         <form method="post" action="">
     		{{ csrf_field() }}
     <?php } ?>
     		<h2>Select SubCategory:</h2> <br/>
			<select name="catvalue" onchange="submit()">

			<?PHP   
			   if (Request::isMethod('post'))
			   {
			    ?>
			    
			   @foreach($compcategory->subcategories as $subcat)  
			      <option value="{{$subcat->id}}">{{$subcat->sub_cat_name}} </option>
			   @endforeach


			    <?php } ?>


			</select>
		</form>
      </div>
 

     

    </div>

		


