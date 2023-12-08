package com.Det.mano.controller;


import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Det.mano.Dao.UserDaoImpl;
import com.Det.mano.entity.User;



@WebServlet("/UserProfileServlet")

public class UserProfileController extends HttpServlet 
{
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
       
        
    	String userId = (String) req.getServletContext().getAttribute("email");
        
        req.setAttribute("email", userId);
        
        
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
    	res.setContentType("text/html");
    	PrintWriter out= res.getWriter();
    	
    	String Name = req.getParameter("Name");
    	String userId = (String) req.getServletContext().getAttribute("email");
    	
    	 try {
    	        // Assuming you have a way to retrieve the 'User' object for the logged-in user.
    	        User user = new User(); // Implement this method to get the logged-in user.
    	        UserDaoImpl userDao = new UserDaoImpl();
    	        	
    	        	
    	            user.setUserName(Name); 
    	            user.setUserId(userId);// Update the name in the 'User' object
    	            
    	            req.getRequestDispatcher(userDao.UpdateUserProfile(user, userId)).forward(req, res);
    	        
    	       
    	    } 
    	 catch (Exception e) 
    	 	{
    	       System.out.println(e); // Use a proper logging mechanism instead of System.out.println
    	    }

}           

}



   