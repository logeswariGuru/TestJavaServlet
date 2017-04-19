<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="MyCss/welcome.css">
<script src="MyJs/welcome.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Insert title here</title>
   <!-- Js for BooksPage -->
    <script src="MyJs/bookDetail.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
</head>

<body>
<div class="wel_Container">
  
  <nav class="navbar navbar-inverse" style="background-color: #010103;">
 
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
           
           <li ><a class="headerBtn_logout" id="cartz" style="display:none;margin-top:-2%;" data-toggle="modal" data-target="#cart" >Cart</a></li>
           <li style="margin-top:10%;"><a class="headerBtn_logout" id="logout" style="display:none;" >Logout</a></li>
        <li><a class="glyphicon glyphicon-log-in" id="login" data-toggle="modal" data-target="#myModal" > Login</a></li>
        <li><a class="glyphicon glyphicon-log-in" id="reg" data-toggle="modal" data-target="#myReg" > Register</a></li>
      </ul>
    </div>

  </nav>

<!-- Carousel -->
<div class="container" id="homeContainer" style="display:inline-block;">
  <br>

  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:96%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" >
      <div class="item active">
        <img src="images/think.png" alt="Chania" style="width:550px;height:500px;">
    </div>

    <div class="item">
      <img src="images/wings.png" alt="Chania" style="width:550px;height:500px;">
    </div>
    
    <div class="item">
      <img src="images/live.png" alt="Chania" style="width:550px;height:500px;">
    </div>
    </div>
  </div>
  <!-- Left and right controls -->
   <!--  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a> -->
</div>


<!--  Books  -->
<div class="container" id="BookContainer" style="display:none;">
    <div class="TitleOfBooks">
        <a class="navbar-brand" style="font-size:14px;" href="#" id="motive" onclick="BooksInBookStore(this.id)">Motivational books</a>
        <a class="navbar-brand" style="font-size:14px;" href="#" id="java" onclick="BooksInBookStore(this.id)">Java Books</a>
        <a class="navbar-brand" style="font-size:14px;" href="#" id="awards" onclick="BooksInBookStore(this.id)">Award Winning Stories</a>  
        <a class="navbar-brand" style="font-size:14px;" href="#" id="thrilling"onclick="BooksInBookStore(this.id)">Thrilling Stories</a>
        <a class="navbar-brand" style="font-size:14px;" href="#" id="engineer" onclick="BooksInBookStore(this.id)">Engineering Books</a>
    </div>
    <div id="bookLoop">
       
      
    
    </div>
    <div id="javaLoop">
       
      
    
    </div>
    
    
    <!--<div class="Cart">
            
    </div>-->

</div>   

<!-- Login Modal -->
<form action="loginauthnServlet" method="post">
  <div class="modal fade" id="myModal" role="dialog" >
    <div class="modal-dialog">
     <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
          <label>Email:</label><input type="email" id="emailVal" name="loginEmail" placholder="Enter Email"><br><br>
          <label>Password:</label><input type="password" id="pswdVal" name="loginPswd" placholder="Enter password">
        </div>
        <div class="modal-footer">
		  <button type="submit" class="btn btn-default">Login</button>      	
          <button type="button"  data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
   </div>
 </form>  
    
    
  <!-- Register Modal -->
  <!-- <form action="MongoConrection" method="post">
  <div class="modal fade" id="myReg" role="dialog">
   
    <div class="modal-dialog">
      Register Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Register</h4>
        </div>
        <div class="modal-body">
          <label>Name:</label><input type="text" name="username" placholder="Enter Name"><br><br>
		  <label>Password:</label><input type="password" name="password" placholder="Enter password">
        </div>
        <div class="modal-footer">
			    <button type="submit" class="btn btn-default">Register</button>        	
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
    
   </div>
   </form>  -->

   
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
          <table style="width:100%;">
            <tr><th>No</th><th>Title Of Book</th><th>Author Name </th>&nbsp;&nbsp;&nbsp;&nbsp;<th> Price</th></tr>
            <tr><td id="cartNum">1</td><td id="cartBookName"></td><td id="cartAuthrName"></td><td id="cartPrice"></td></tr>
          </table> 
          
          
        </div>
        <div class="modal-footer">
			      	
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
   </div>


</div>
  <!-- Register Modal -->
  <form action="loginServlet" method="post">
  <div class="modal fade" id="myReg" role="dialog">
   
    <div class="modal-dialog">
      <!-- Register Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Register</h4>
        </div>
        <div class="modal-body">
          <label>Name:</label><input type="text" name="username" placholder="Enter Name"><br><br>
          <label>Email:</label><input type="email" name="userEmail" placholder="Enter Email"><br><br>
		  <label>Password:</label><input type="password" name="password" placholder="Enter password">
        </div>
        <div class="modal-footer">
			    <button type="submit" class="btn btn-default">Register</button>        	
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
    
   </div>
   </form>
</body>
</html>