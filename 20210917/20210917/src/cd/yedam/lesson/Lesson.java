package cd.yedam.lesson;

public class Lesson {
	private Teacher teacher;
	private String group; // 3-1
	private Student[] students;

	public Lesson() {
		students = new Student[3];
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	public void addStudent(Student student) {
		for (int i = 0; i < students.length; i++) {
			if (students[i] == null) {
				students[i] = student;
				break;
			}
		}
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public String getGroup() {
		return this.group;
	}

	public void showStudents() {
		for (int i = 0; i < students.length; i++) {
			if(students[i] != null) {
			System.out.println("�̸�: " + students[i].getStudentName()
					 + "����ó : " + students[i].getPhone()
					 + "�ּ� :" +students[i].getaddress());
			}
		}
	}

}
