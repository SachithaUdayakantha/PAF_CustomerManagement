<%@ page import="com.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/customers.js"></script>
<meta name="viewpoint" content="width=device-width, initial-scale=1">
<style>
h1{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 35px;
	text-align : center;
}

input[type=text] {
  width: 100%;
  padding: 9px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 1px;
  margin-bottom: 1px;
  resize: vertical;
}

input[type=password]{
  width: 100%;
  padding: 9px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 1px;
  margin-bottom: 16px;
  resize: vertical;
}

.container {
  
  padding: 40px;
  
}
.form-background{
	background:#f1f1f1;
	padding : 20px;
}
lable{
	font-size:18px;
	font-weight:600;
	margin-bottom:5px;
}
</style>

</head>
<body>

<div class="container">
	<div class="row">
	<div class="col-md-12">
 			
 	<h1>Create Your Account</h1>
 	
 	<div class="form-background">
	 	
		<form id='formCustomer' name='formCustomer' method='post' action='customers.jsp'>
			<lable>Customer name: </lable><input id='CustomerName' name='CustomerName' placeholder='Please enter your first name' type='text' class='form-control form-control-sm'><br>
			<lable>Customer nic:</lable> <input id='nic' name='nic' placeholder='Please enter your NIC' type='text' class='form-control form-control-sm'><br> 
			<lable>Customer phone:</lable> <input id='phoneNo' name='phoneNo' placeholder='Please enter your Phone no' type='text' class='form-control form-control-sm'><br> 
			<lable>Customer email:</lable> <input id='email' name='email' placeholder='Please enter your email' type='text' class='form-control form-control-sm'><br> 
			<lable>Customer address:</lable> <input id='cusAddress' name='cusAddress' placeholder='Please enter your address' type='text' class='form-control form-control-sm'><br> 
			<lable>Customer password:</lable> <input id='cusPassword' name='cusPassword' placeholder='Minimum 5 characters with a number and letter' type='password' class='form-control form-control-sm' required><br> 
			<input id="btnSave" name="btnSave" type="button" value="Save" class='btn btn-primary'>
			<input type='hidden' id='hidCustomerIDSave' name='hidCustomerIDSave' value=''>
		</form>
		
		<br>
		<div id="alertSuccess" class="alert alert-success"></div>
		
		<div id="alertError" class="alert alert-danger"></div>
	
		<br>
		<div id="divCustomersGrid">
		<%
			Customer customerObj = new Customer();
			out.print(customerObj.readCustomer());
		%>
		</div>
	
	</div>	
</div></div></div>

</body>
</html>