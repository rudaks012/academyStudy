package Firsttest;

public class Student extends Person {
	private String school;

	public Student(String name, Gender gender, String phone, String school) {
		super(name, gender, phone);
		this.school = school;
	}

	// ¸Þ¼Òµå
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Override
	public String toString() {
		return "Student [name=" + this.getName() + "gender=" + this.getGender() + ", phone=" + this.getPhone()
				+ "school : " + this.getSchool() + "]";
	}

}
