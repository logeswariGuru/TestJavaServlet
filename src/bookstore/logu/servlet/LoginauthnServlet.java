package bookstore.logu.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mongodb.Mongo;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
/*




import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;*/

@WebServlet("/loginauthnServlet")
public class LoginauthnServlet extends HttpServlet {
	/*
	 * public void login(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * System.out.println("Login Page Start-->");
	 * 
	 * String LoginUsername = request.getParameter("loginEmail"); String
	 * LoginPassword = request.getParameter("loginPswd");
	 * System.out.println("LoginUserName: " + LoginUsername);
	 * System.out.println("Loginpassword: " + LoginPassword);
	 * response.sendRedirect("http://localhost:8080/TestJavaServlet/");
	 * 
	 * }
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// read form fields

		System.out.println("Login Authentication Page Start-->");

		String LoginUsername = request.getParameter("loginEmail");
		String LoginPassword = request.getParameter("loginPswd");
		System.out.println("LoginUserName: " + LoginUsername);
		System.out.println("Loginpassword: " + LoginPassword);
		Mongo client = new Mongo("localhost", 27017);
		String connectPoint = client.getConnectPoint();
		System.out.println(connectPoint);
		DB db = client.getDB("BookStore");
		DBCollection dbcollectn = db.getCollection("Reg");

		System.out.println("collection-->:" + dbcollectn);

		/*
		 * BasicDBObject whereQuery = new BasicDBObject();
		 * whereQuery.put("email", LoginUsername); DBCursor cursor3 =
		 * collection.find(whereQuery);
		 */
		BasicDBObject andQuery = new BasicDBObject();
		List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
		obj.add(new BasicDBObject("email", LoginUsername));
		obj.add(new BasicDBObject("pswd", LoginPassword));
		andQuery.put("$and", obj);

		System.out.println(andQuery.toString());

		DBCursor cursor7 = dbcollectn.find(andQuery);
		System.out.println("cursor7-->:" + cursor7.hasNext());
		if (cursor7.hasNext()) {

			System.out.println("Login Successfully:" + cursor7.next());
			/*
			 * response.sendRedirect(
			 * "http://localhost:8080/TestJavaServlet/jsp/logedin.jsp");
			 */
			/*HttpSession session = request.getSession();
			session.setAttribute("user", LoginUsername);*/
			response.sendRedirect("jsp/logedin.jsp");
		} else {
			System.out.println("Login UnSuccessfully:");
			response.sendRedirect("http://localhost:8080/TestJavaServlet/");
		}

	}
}
