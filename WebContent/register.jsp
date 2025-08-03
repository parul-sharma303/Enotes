<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>
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
						<h4>Registration</h4>
					</div>
					
					
						<%
							String regMsg=(String)session.getAttribute("reg-sucess");
							if(regMsg!=null)
							{%>
							<div class="alert alert-success" role="alert"><%=regMsg%> Login<a href="login.jsp">Click Here</a></div>
								
							<%
							session.removeAttribute("reg-sucess");
							}
						%>
						<%
							String FailedMsg=(String)session.getAttribute("failed-msg");
							if(FailedMsg!=null)
							{%>
							<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
								
							<%
							session.removeAttribute("failed-msg");
							}
						%>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label for="exampleInputname" class="form-label">Full
									Name </label> <input type="text" class="form-control"
									id="exampleInputname" aria-describedby="emailHelp" name="fname"
									placeholder="Enter your Full Name">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="uemail" placeholder="Enter your email">

							</div>
							<div class=" form-group mb-3">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" placeholder="Enter password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>