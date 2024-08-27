package Entity;

public class Student {

	private int id;
	private String name;
	private String dob;
	private String address;
	private String qualification;
	private String emial;
	private int courseId;
	private String courseName;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String name, String dob, String address, String qualification, String emial, int courseId) {
		super();
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.qualification = qualification;
		this.emial = emial;
		this.courseId = courseId;
	}

	public Student(int id, String name, String dob, String address, String qualification, String emial, int courseId) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.qualification = qualification;
		this.emial = emial;
		this.courseId = courseId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getEmial() {
		return emial;
	}

	public void setEmial(String emial) {
		this.emial = emial;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", dob=" + dob + ", address=" + address + ", qualification="
				+ qualification + ", emial=" + emial + "]";
	}

}
