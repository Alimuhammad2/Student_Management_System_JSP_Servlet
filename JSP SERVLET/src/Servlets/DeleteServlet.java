package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connections.DbConnection;
import DAO.StudentDAO;
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		
		StudentDAO dao = new StudentDAO(DbConnection.getCon());
		
		boolean f = dao.deleteStudent(id);
		
		HttpSession session = req.getSession();
		
		if (f) {
			session.setAttribute("successMSG", "Student Deleted Successfully..!");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMSG", "Student Not Deleted..!");
			resp.sendRedirect("index.jsp");
		}
		
	}
	
}
