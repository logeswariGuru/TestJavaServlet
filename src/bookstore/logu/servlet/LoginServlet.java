package bookstore.logu.servlet;
import java.io.IOException;
import org.bson.Document;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.PrintWriter;
import java.net.UnknownHostException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        // read form fields
       String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userEmail = request.getParameter("userEmail");
         
        System.out.println("username: " + username);
        System.out.println("password: " + password);
        System.out.println("HTML CODE--> ");
 
        // Mongo Connection...
        
         
        // get response writer
       /* PrintWriter writer = response.getWriter();*/
         
        // build HTML code
/*        String htmlRespone = "<html>";
        htmlRespone += "<h2>Your username is: " + username + "<br/>";      
        htmlRespone += "Your password is: " + password + "</h2>";    
        htmlRespone += "</html>";*/
         
        // return response
      
       /* writer.println(htmlRespone);*/
       MongoClient client = new MongoClient("localhost", 27017);
       	String connectPoint = client.getConnectPoint();
		System.out.println(connectPoint);
		MongoDatabase database = client.getDatabase("BookStore");
		MongoCollection collection = database.getCollection("Reg");
		Document document = new Document();
		document.put("email", userEmail);
		document.put("name", username);
		
		document.put("pswd", password);
		
		 
		
		collection.insertOne(document);
        
		client.close();
		response.sendRedirect("http://localhost:8080/TestJavaServlet/");
        
       
    }
 
}
