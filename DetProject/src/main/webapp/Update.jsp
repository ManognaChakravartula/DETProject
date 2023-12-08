<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Det.mano.Dao.CustDaoImpl"%>
<%@page import="com.Det.mano.entity.Cust"%>
	<%
	if(request.getMethod().equals("GET"))
	{
		
		Integer Recordid = Integer.parseInt(request.getParameter("recordid"));
		
		CustDaoImpl CustDao = new CustDaoImpl();
		 Cust cust = CustDao.findRecordById(Recordid);
	
	%>	
	<html>
	<head>
	<style>
	 .container {
        max-width: 350px;
        margin: 70px auto;
        padding: 20px;
        background-color: rgb(255, 255, 255);
        border-radius: 5px;
        box-shadow: 0 0 10px rgb(0, 0, 0);
        

        }
	.input-container{
		position: relative;
        margin-bottom: 20px;
	}
	.input-container input {
		 width: 120;
         padding: 10px;
         border: none;
         border-bottom: 1px solid #ccc;
         outline: none;
         font-size: 14px;
	}
	.input-container input:focus + .watermark {
            opacity: 0;
            }
	 .watermark{
		position: absolute;
        top: 0;
        left: 0;
        padding: 10px;
        opacity: 0.5;
        transition: opacity 0.3s;
	}
	.btn-container{
		text-align: center;
	}
	.btn{
		padding: 10px 50px;
            background-color: #007bff;
            color: rgb(255, 255, 255);
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
	}
	.btn:hover {
     background-color: rgb(48, 154, 72);
     }
</style>
</head>
<body background="" style="background-size:100%; font-family: 'Times New Roman', Times, serif">
<div class="container" style="color: rgb(54, 112, 111);">
      
<h2 style="text-align: center;color:  rgb(17, 78, 111);font-size:35px">Update Expenses</h2>
	
	
	<form method="post" action="UpdateRecord.jsp" onsubmit="return UpdateForm()" name="UpdateForm">
		<fieldset>
		
		<div class="input-container">
					<label for="recordid">RecordId:</label><br>
					<input type="number" name="recordid"  value="<%=cust.getRecordid()%>" readonly>
		</div>
			<div class="input-container">
					<label for="item">Item:</label><br>
                    <input type="text" id="item" name="item"  value="<%=cust.getItem()%>" style="font-family: 'Times New Roman', Times, serif"placeholder="Enter new item" required>
        </div>        
        <div class="input-container">
                    <label for="date">Date:</label><br>
					<input type="date" id="date" name="date" value="<%=cust.getDate()%>" style="font-family: 'Times New Roman', Times, serif" placeholder="Enter  new date" >
		</div>
        <div class="input-container">
        		   <label for="price">Price:</label><br>
                   <input type="text" id="price" name="price" value="<%=cust. getPrice()%>" style="font-family: 'Times New Roman', Times, serif" placeholder="Enter new price..." >
        </div>
        <div class="input-container">
                    <label for="description">Description:</label><br><br>
					<textarea id="description" name="description"  rows="4" cols="40" style="font-family: 'Times New Roman', Times, serif;color: black ;text-align: left;" placeholder="Enter a description..."><%=cust.getDescription()%></textarea>
		</div>

            <div class="btn-container">
                <button type="submit" class="btn">Submit</button>
                </div>
                
		<script>
		
	function UpdateForm()
	{
    var Price = document.forms["UpdateForm"]["price"].value;
    if (Price <= 0)
    {
        alert("Price must be greater than 0.");
        return false;
    }
    return true;
}
	var CurrentDate = new Date().toISOString().split("T")[0];
    document.getElementById("date").setAttribute("max", CurrentDate);

</script>

		
		</fieldset>
		</form>	
		</div>
	</body>
	</html>
	<%
	}
	%>