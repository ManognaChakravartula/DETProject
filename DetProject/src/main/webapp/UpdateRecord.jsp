<%@page import="com.Det.mano.Dao.CustDaoImpl"%>
<%@page import="org.eclipse.jdt.internal.compiler.lookup.InvocationSite.EmptyWithAstNode"%>
<%@page import="com.Det.mano.entity.Cust"%>
<%
if(request.getMethod().equals("POST"))
{
	String userId = (String) request.getServletContext().getAttribute("email");
	
	String Item = request.getParameter("item"); 
	String Date = request.getParameter("date"); 
	Integer Price=Integer.parseInt(request.getParameter("price"));
	String Description = request.getParameter("description");
	Integer Recordid = Integer.parseInt(request.getParameter("recordid"));
	
	
	   if(Price<=0)
	   {
		   out.println("<html><body>");
		    out.println("<script>");
		    out.println("alert('price must be greater than 0 .');");
		    out.println("window.history.back();"); 
		    out.println("</script>");
		    out.println("</body></html>");
			}
	        
	        else {
	
	
	Cust cust = new Cust();
	cust.setUserId(userId);
	cust.setItem(Item);
	cust.setDate(Date);
	cust.setPrice(Price); 
	cust.setDescription(Description);
	cust.setRecordid(Recordid);
	

	CustDaoImpl custDao = new CustDaoImpl();
	
	custDao.UpdateRecord(cust,Recordid);
	response.sendRedirect("Dashboard.html");
	        }
}
	        
	          
%>
