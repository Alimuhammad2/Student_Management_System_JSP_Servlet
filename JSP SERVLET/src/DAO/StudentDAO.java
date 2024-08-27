package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Entity.Student;

public class StudentDAO {

	private Connection con;

	public StudentDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean addStudent(Student s) {

		boolean f = false;

		try {

			String sql = "insert into student(name,dob,address,qualification,email,course_Id) values (?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, s.getName());
			ps.setString(2, s.getDob());
			ps.setString(3, s.getAddress());
			ps.setString(4, s.getQualification());
			ps.setString(5, s.getEmial());
			ps.setInt(6, s.getCourseId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Student> getAllStudents() {

		List<Student> list = new ArrayList<>();
		Student s = null;

		try {

			String sql = "select * from student";

			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				s = new Student();

				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmial(rs.getString(6));
				s.setCourseId(rs.getInt(7));

				list.add(s);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Student getStudentById(int id) {

		Student s = null;
		try {

			String sql = "select * from student where id = ?";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				s = new Student();

				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmial(rs.getString(6));
				s.setCourseId(rs.getInt(7));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public boolean updateStudent(Student s) {

		boolean f = false;

		try {

			String sql = "update student set name=?, dob=?, address=?, qualification=?, email=?, course_id=? where id=?";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, s.getName());
			ps.setString(2, s.getDob());
			ps.setString(3, s.getAddress());
			ps.setString(4, s.getQualification());
			ps.setString(5, s.getEmial());
			ps.setInt(6, s.getCourseId());
			ps.setInt(7, s.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean deleteStudent(int id) {

		boolean f = false;

		try {

			String sql = "delete from student where id = ?";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, id);

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public String getCourseById(int courseId) {

		String s = null;
		try {

			String sql = "select course_name from courses where course_id = ?";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, courseId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				s = rs.getString("course_name"); // Set the course
													// object
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

}
