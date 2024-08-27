package Entity;

public class Admin {

	private String username;
    private String password;
    private String coursename;
    private String courseduration;
    private int courseId;
	
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

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	// Constructors
    public Admin() {}

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Admin(String coursename, String courseduration, int courseId) {
		super();
		this.coursename = coursename;
		this.courseduration = courseduration;
		this.courseId = courseId;
	}

	// Getters and Setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
	
}
