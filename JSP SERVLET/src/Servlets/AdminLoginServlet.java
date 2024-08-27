package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connections.DbConnection;
import DAO.AdminDAO;
import Entity.Admin;
import Entity.Student;

@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String password = req.getParameter("password");

		Admin a = new Admin(username, password);

		Connection con = DbConnection.getCon();

		AdminDAO dao = new AdminDAO(con);

		HttpSession session = req.getSession();

		if (dao.getAdminByCredentials(a)) {
			session.setAttribute("username", username);
			//session.setMaxInactiveInterval(10);  //session will expire in 10 second.
			session.setAttribute("successMSG", "Admin Login Successfully..!");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMSG", "Login Failed..!");
			resp.sendRedirect("adminlogin.jsp");
		}

	}
}
