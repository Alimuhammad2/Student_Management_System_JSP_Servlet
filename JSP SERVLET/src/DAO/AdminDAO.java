package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Entity.Admin;

public class AdminDAO  {

	private Connection con;

	public AdminDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean getAdminByCredentials(Admin a) {
	        
	    	boolean f = false;
	        try {
	            String sql = "SELECT * FROM admin WHERE name = ? AND password = ?";
	            PreparedStatement ps = con.prepareStatement(sql);
	            
	            ps.setString(1, a.getUsername());
	            ps.setString(2, a.getPassword());

	            ResultSet rs = ps.executeQuery();
	            f = rs.next();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return f;
	    }	
	
	public boolean addcourses(Admin a){
		
		boolean f = false;
		
		try{
			
			String sql = "insert into courses(course_name, course_duration, course_id) values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, a.getCoursename());
			ps.setString(2, a.getCourseduration());
			ps.setInt(3, a.getCourseId());
			
			int i = ps.executeUpdate();
			f= i>0;
			
				
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public List<Admin> getAllCourses(){
		
		List<Admin> list = new ArrayList<>();
		
		Admin a = null;
		
		try{
			
			String sql = "select * from courses";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				a = new Admin();
				
				a.setCourseId(rs.getInt(1));
				a.setCoursename(rs.getString(2));
				a.setCourseduration(rs.getString(3));
				
				list.add(a);
			}
					
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list;
	}
	
}
