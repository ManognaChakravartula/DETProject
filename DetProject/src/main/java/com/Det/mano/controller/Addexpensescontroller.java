package com.Det.mano.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Det.mano.Dao.CustDaoImpl;
import com.Det.mano.entity.Cust;



@WebServlet("/Addexpenses")
public class Addexpensescontroller extends HttpServlet
{
public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
{
res.setContentType("text/html"); 
PrintWriter out = res.getWriter();


String userId = (String) req.getServletContext().getAttribute("email");
String Item = req.getParameter("item"); 
String Date = req.getParameter("date"); 
Integer Price=Integer.parseInt(req.getParameter("price"));
String Description = req.getParameter("description");



try
{

Cust cust = new Cust();
CustDaoImpl CustDao = new CustDaoImpl();

cust.setUserId(userId);
cust.setItem(Item);
cust.setDate(Date);
cust.setPrice(Price); 
cust.setDescription(Description);


req.getRequestDispatcher (CustDao.addexpenses(cust,userId)).forward(req, res);

}
catch (Exception e)
{
System.out.println(e);
}
}
}

