<%@ page import="com.DAO.postDAO"%>
<%@ page import="com.Db.DBConnect"%>
<%@ page import="com.User.post"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	Userdetails user1 = (Userdetails) session.getAttribute("userD");
	if (user1 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please Login..");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%
		Integer noteid= Integer.parseInt(request.getParameter("note_id"));
		
		postDAO post=new postDAO(DBConnect.getConn());
		post p=post.getDataById(noteid);
	%>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		

		<h1 class="text-center">
			Edit Your Notes....! <i class="fa-solid fa-face-smile-wink fa-1x"></i>
		</h1>
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet" method="post">
					<input type="hidden" value="<%=noteid%>" name="noteid"/>
						<div class="form-group">


							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								 name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="17" cols="" class="form-control" name="content"
								required="required"><%=p.getContent()%></textarea>
						</div>

						<div class=" container text-center">
							<button type="submit" class="btn btn-primary">Edit Note</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>