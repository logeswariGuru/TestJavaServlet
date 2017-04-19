<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../MyCss/welcome.css">


<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Insert title here</title>
   <!-- Js for BooksPage -->
    <script src="../MyJs/bookDetail.js"></script>
    <script src="../MyJs/welcome.js"></script>
    </head>

<body>
<div class="wel_Container">
  
  <nav class="navbar navbar-inverse" style="margin-bottom:0;background-color: #010103;">
 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Welcome To Book Store</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
           
           <li ><a class="headerBtn_logout glyphicon glyphicon-shopping-cart" id="cartz" style="margin-top:-2%;" data-toggle="modal" data-target="#cart" >Cart</a></li>
           <li ><a class="headerBtn_logout" id="logout" onclick="logout()">Logout</a></li>
        
        
      </ul>
    </div>

  </nav>
  <!--  Books  -->
<div class="container" id="BookContainer" style="height:100%;padding-left:0;">
    <div class="TitleOfBooks">
        <a class="navbar-brand" style="font-size:14px;color: #ffffff;" href="#" id="motive" onclick="BooksInBookStore(this.id)">Motivational books</a>
        <a class="navbar-brand" style="font-size:14px;color: #ffffff;" href="#" id="java" onclick="BooksInBookStore(this.id)">Java Books</a>
        <a class="navbar-brand" style="font-size:14px;color: #ffffff;" href="#" id="awards" onclick="BooksInBookStore(this.id)">Award Winning Stories</a>  
        <a class="navbar-brand" style="font-size:14px;color: #ffffff;" href="#" id="thrilling"onclick="BooksInBookStore(this.id)">Thrilling Stories</a>
        <a class="navbar-brand" style="font-size:14px;color: #ffffff;" href="#" id="engineer" onclick="BooksInBookStore(this.id)">Engineering Books</a>
    </div>
    <div id="bookLoop">
       
      
    
    </div>
    <div id="awardLoop">
       
      
    
    </div>
    </div>   
    <!-- Book Detail Modal -->
  <div class="modal fade" id="BookDetailModal" role="dialog">
    <div class="modal-dialog">
      <!-- Register Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Book Detail</h4>
        </div>
        <div class="modal-body">
          <label>Title Of Book: </label>&nbsp;<p id="BuyBookName"></p><br>
          <label>Author Name: </label>&nbsp;<p id="BuyAuthrName"></p><br>
          <label>Books Availability: </label>&nbsp;<p id="BuyAvailability"></p><br>
          <label>Price: </label>&nbsp;<p id="BuyPrice"></p>
          
        </div>
        <div class="modal-footer">
			    <button type="button" class="btn btn-default" data-dismiss="modal" data-toggle="modal" onclick="GoesCart()" data-target="#cart">Add To Cart</button>        	
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
   </div>
   
    <!-- Cart Modal -->
  <div class="modal fade" id="cart" role="dialog">
    <div class="modal-dialog">
      <!-- Register Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Cart</h4>
        </div>
        <div class="modal-body">
          <table id="cartTable" style="width:100%;">
            
          </table> 
          
          
        </div>
        <div class="modal-footer">
			      	
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
   </div>


</div>
</body>
</html>