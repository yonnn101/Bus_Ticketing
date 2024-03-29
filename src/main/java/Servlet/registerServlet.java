package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DBConnect;
import Dao.UserDao;
import entity.User;

@WebServlet("/addUser")
public class registerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();		
		try{
			
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
		    UserDao dao = new UserDao(DBConnect.getConn());
		    
		    User users = new User(fname, lname, email, password);
		    boolean f = dao.addUser(users);
		
		if(f){
			
			session.setAttribute("fname", fname);
			session.setAttribute("ntf", "Registered Succesfully.");
			response.sendRedirect("TravelDet.jsp");
		}
		else{
			session.setAttribute("ntf", "Something Went Wrong!");
			response.sendRedirect("signup.jsp");
		}
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
