package cd.yedam.inherit;
/*
 *  People class 상속 Student
 *  자식 class / extends /부모 class
 *  
 */

public class Student extends People {
	private int studentNo;

	Student(String name, String ssn) {
		super(name, ssn); // 부모클래스의 생성자를 호출 super
	}

	Student(String name, String ssn, int studentNo) {
		super(name, ssn);
		this.studentNo = studentNo;

	}

	public int getStudentNo() {
		return studentNo;
	}

	// override
	@Override
	public void showInfo() {
		System.out.println("Name : " + super.getName() + ",SSN : " + this.getSsn() + ", SNO : " + this.getStudentNo());
		// 부모클래스 getname , 자식클래스 getname

	}

//	Student는 -> People 상속 -> 모든 class 는 기본적으로 object 상속 
	@Override
	public String toString() {
		return "학생 [이름" + this.getName() + " 주민번호 " + this.getSsn() + "학번 " + this.getStudentNo() + "]";
	}

}
