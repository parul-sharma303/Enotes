<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<%@include file="all_component/allcss.jsp"%>
<%@include file="all_component/navbar.jsp"%>
</head>
<body>
<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-info ">
					<i class="fa-solid fa-user-plus fa-3x"></i>
					<h4>Login</h4>
					</div>
					
					
					<%
					String invalidMsg=(String)session.getAttribute("login-failed");
					if(invalidMsg!=null)
					{
					%>
					
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					
					<%
					session.removeAttribute("login-failed");
					}
					
					%>
					
					<%
					String withoutLogin=(String)session.getAttribute("Login-error");
					if(withoutLogin!=null)
					{%>
					
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
						
					<%
					session.removeAttribute("Login-error");
					}
					%>
					
					<%
					String lgMsg=(String)session.getAttribute("logoutMsg");
					if(lgMsg!=null)
					{%>
					<div class="alert alert-success"><%=lgMsg%></div>
						
					<%
					session.removeAttribute("logoutMsg");
					}
					%>
					<div class="card-body">
						<form action="loginServlet" method="post">
						
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" name="uemail" placeholder="Enter your email">
								
							</div>
							<div class=" form-group mb-3">
								<label for="exampleInputPassword1">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword" placeholder="Enter password">
							</div>
							
							<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="all_component/footer.jsp" %>


</body>
</html>