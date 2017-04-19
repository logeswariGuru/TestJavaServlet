
function login()
{alert("-->Login-->");
    var email = document.getElementById("emailVal").value;
    var pswd = document.getElementById("pswdVal").value;
    
    if(email=="admin@gmail.com" && pswd=="admin")
    {
        alert("Login Succesfully");
        document.getElementById("cartz").style.display="block";
        document.getElementById("logout").style.display="inline";
         
        document.getElementById("login").style.display="none";
        document.getElementById("reg").style.display="none";
        document.getElementById("homeContainer").style.display="none";
        document.getElementById("BookContainer").style.display="inline";
       
    }
    else
    {
        alert("Login UnSuccesfully");
    }
 
}
function bookDetail()
{
    alert("-->BookDetail -->");
}

function logout()
{
	alert("-->logout -->");
	window.location.href="http://localhost:8080/TestJavaServlet/";
}