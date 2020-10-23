<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<style>
body{
  background-image: url("1.jpg");
}


</style>

</head>
<link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
<body>
   <h2 style="align-text: center;background-color:pink;
       margin:0px;padding:10px;
    ">Welcome</h2>
    
   
    
    <h1 style="color: blue;text-align:center;">Register here</h1>
    
    
    
    </div>
    <div class=" d-flex justify-content-between align-content-center ">
    <form action="register.jsp" method="post" class="col-12 bordered d-flex justify-content-between align-content-center mt-5">
		<table align="center" >
			<thead >
				
				
			</thead>
			<tbody>
				<tr>
					<th>Full Name</th>
					<th><input type="text" name="fullName"/></th>
					
				</tr>
				
				<tr>
					<th>User Name</th>
					<th><input type="text" name="userName"/></th>
					
				</tr>
				
				<tr>
					<th>Password</th>
					<th><input type="password" name="userPass"/></th>
					
				</tr>
				<br>
				<br>
				
				<tr>
					<th><a href="login.jsp">Back</a></th>
					<th><input type="submit" name="Register"/></th>
					
				</tr>
			</tbody>
			
		</table>
    
    
    
    
    
    
    
    </form>
    </div>

</body>
</html>