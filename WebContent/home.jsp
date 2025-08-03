<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	Userdetails user2= (Userdetails) session.getAttribute("userD");
	if (user2 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please Login..");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp"%>
<%@include file="all_component/navbar.jsp"%>
<style>
.background-section {
	background-image: url(img/here.jpg);
	background-repeat: no-repeat;
	width: 100%;
	height: 80vh;
	background-size: 1550px 800px;
	background-position: center;
}
</style>

</head>
<body>

	<div class="background-section py-5" style="height: 10%;">


		<div class="d-flex justify-content-center " style="height: 10vh;">
			<h1 class="text-center mb-2">Start your Writing Your Notes..!</h1>
		</div>
		<div class="d-flex justify-content-center " style="height: 10vh;">
			<i class="fa-solid fa-book fa-5x"></i>
		</div>




		<div class="text-center" style="height: 50vh;">
			<a href="addnotes.jsp" class="btn btn-outline-dark mt-3">Start
				Here</a>
		</div>


	</div>
	<%@include file="all_component/footer.jsp"%>



</body>
</html>