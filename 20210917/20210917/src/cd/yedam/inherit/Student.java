package cd.yedam.inherit;
/*
 *  People class ��� Student
 *  �ڽ� class / extends /�θ� class
 *  
 */

public class Student extends People {
	private int studentNo;

	Student(String name, String ssn) {
		super(name, ssn); // �θ�Ŭ������ �����ڸ� ȣ�� super
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
		// �θ�Ŭ���� getname , �ڽ�Ŭ���� getname

	}

//	Student�� -> People ��� -> ��� class �� �⺻������ object ��� 
	@Override
	public String toString() {
		return "�л� [�̸�" + this.getName() + " �ֹι�ȣ " + this.getSsn() + "�й� " + this.getStudentNo() + "]";
	}

}
