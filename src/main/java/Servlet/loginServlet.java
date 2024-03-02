package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DBConnect;
import Dao.UserDao;
import entity.User;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try{
			
			String fname = request.getParameter("fname");
			String password = request.getParameter("password");
			
			User us = new User();
			HttpSession session = request.getSession();
			
			if("Abraham".equals(fname) && "admin12".equals(password)){
				
				session.setAttribute("userobj",us);
				response.sendRedirect("admin.jsp");
			}
			else{
				
				UserDao dao = new UserDao(DBConnect.getConn());
				User user = dao.login(fname, password);
				
                if(user!=null){
					
					session.setAttribute("userobj", user);
					session.setAttribute("fname", fname);
					request.getRequestDispatcher("home.jsp").forward(request, response);
				}
                else{
                	
                	session.setAttribute("ntf", "Invalid UserName OR Password!");
    				response.sendRedirect("login.jsp");
                }
			}
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
