package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Db.DBConnect;
import com.DAO.postDAO;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer noteid=Integer.parseInt(request.getParameter("note_id"));
		postDAO dao=new postDAO(DBConnect.getConn());
		boolean f=dao.DeleteNotes(noteid);
		if(f)
		{
			HttpSession session=request.getSession();
			session.setAttribute("updateMsg", "Notes Delete Successfully");
			response.sendRedirect("showNotes.jsp");
			
		}else{
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("wrongMsg", "Something went wrong on server...!");
			response.sendRedirect("showNotes.jsp");
			
		}
		

	}

}