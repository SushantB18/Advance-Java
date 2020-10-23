<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="validate_login.jsp" method="post">
		<table align="center">
			<thead >
				
				
			</thead>
			<tbody>
				<h1>Login</h1>
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
					<th><a href="register_form.jsp">SIGN UP</a></th>
					<th><input type="submit" value="Login" style="padding: 5px;background-color:pink"/></th>
					
				</tr>
				
				<tr>
					<td colspan="2" style="color: red;font-size: 15;text-align: center;" >
					<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>
					</td>
					
				</tr>
			</tbody>
			
		</table>
    
    
    
    
    
    
    
    </form>


</body>
</html>