package Entity;

public class Courses {

	private int courseId;
	private String coursename;
	private String courseduration;
	
	public Courses(int courseId, String coursename, String courseduration) {
		super();
		this.courseId = courseId;
		this.coursename = coursename;
		this.courseduration = courseduration;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseduration() {
		return courseduration;
	}

	public void setCourseduration(String courseduration) {
		this.courseduration = courseduration;
	}
	
}
