<%@ page import="com.Db.DBConnect,java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="all_component/allcss.jsp"%>
<title>Home Page</title>
<style>
.back-img {
	background-image: url(img/pic.jpg);
	background-repeat: no-repeat;
	width: 100%;
	height: 80vh;
	background-size: 1800px 769px;
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	
	

	<div class="container-fluid back-img">
		<div class="text-center ">
			<h1 class="text-dark">
				<i class="fa-solid fa-book"></i> E Notes-Save your Notes
			</h1>
			<a href="login.jsp" class="btn btn-dark"><i
				class="fa-solid fa-circle-user"></i> Login</a> <a href="register.jsp"
				class="btn btn-dark"><i class="fa-solid fa-user-plus"></i>
				Register</a>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>