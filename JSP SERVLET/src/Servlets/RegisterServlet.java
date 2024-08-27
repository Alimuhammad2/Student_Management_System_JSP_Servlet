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
import Entity.Student;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String address = req.getParameter("address");
		String qualification = req.getParameter("qualification");
		String email = req.getParameter("email");
		int courseId = Integer.parseInt(req.getParameter("courseId"));
			
		//int courseId= Integer.parseInt(course);
		Student s = new Student(name, dob, address, qualification, email, courseId);

		StudentDAO dao = new StudentDAO(DbConnection.getCon());

		HttpSession session = req.getSession();

		boolean f = dao.addStudent(s);

		if (f) {
			session.setAttribute("successMSG", "Student Added Successfully..!");
			resp.sendRedirect("addstudent.jsp");
		} else {
			session.setAttribute("errorMSG", "Student Not Added..!");
			resp.sendRedirect("addstudent.jsp");
		}

	}

}
