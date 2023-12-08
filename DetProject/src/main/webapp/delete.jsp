
<%@page import="com.Det.mano.Dao.CustDaoImpl"%>

<% 
if(request.getMethod().equals("GET"))
{
Integer Recordid = Integer.parseInt(request.getParameter("recordid"));

CustDaoImpl custDao = new CustDaoImpl(); 

custDao.deleteRecord(Recordid);

response.sendRedirect("Manageexpenses");
}
%>