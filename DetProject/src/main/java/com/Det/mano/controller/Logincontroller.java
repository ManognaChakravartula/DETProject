package com.Det.mano.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Det.mano.Dao.UserDaoImpl;

import com.Det.mano.entity.User;

@WebServlet("/login")

public class Logincontroller extends HttpServlet
{
public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
{
res.setContentType("text/html");
PrintWriter out = res.getWriter();
String userId = req.getParameter("email");
String password= req.getParameter ("password");
try
{
User user = new User();
UserDaoImpl userDao = new UserDaoImpl();
user.setUserId(userId);
user.setPassword(password);

ServletContext servletContext = req.getServletContext();
servletContext.setAttribute("email", userId);

String result = userDao.validateLoginDetails(user);

		if (result.equals("Dashboard.html")) 
			{
				HttpSession session = req.getSession();
				session.setAttribute("user", user);
				req.getRequestDispatcher(result).forward(req, res);
			} 
		else
			{
				out.println("<html><body>");
				out.println("<script>");
				out.println("alert('Invalid user ID or password');");
				out.println("window.history.back();"); // Redirect to the login page
				out.println("</script>");
				out.println("</body></html>");
			}
}
catch(Exception e)
{
System.out.println(e);
}

}
}
