package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connections.DbConnection;
import DAO.AdminDAO;
import Entity.Admin;
@WebServlet("/courseservlet")
public class CoursesServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int courseId=0;
		String coursename = req.getParameter("coursename");
		String courseduration = req.getParameter("courseduration");
		
		Admin a  = new Admin(coursename,courseduration,courseId);
		
		AdminDAO dao = new AdminDAO(DbConnection.getCon());
		
		HttpSession session = req.getSession();
		boolean f = dao.addcourses(a);
		
		if(f){
			session.setAttribute("successMSG", "Course Added Successfully..!");
			resp.sendRedirect("index.jsp");
		}else{
			session.setAttribute("errorMSG", "Course Not Added..!");
			resp.sendRedirect("index.jsp");
		}
	}
}
