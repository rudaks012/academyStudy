package cd.yedam.inherit;

public class Example {
	public static void main(String[] args) {
		People p1 = new People("ȫ�浿", "151515-1515151");
		System.out.println("�̸� : " + p1.getName());
		System.out.println("��ȣ : " + p1.getSsn());
		p1.showInfo();
		System.out.println(p1.toString());

		Student s1 = new Student("Park", "1212-1421");
		System.out.println("�̸� : " + s1.getName());
		System.out.println("��ȣ : " + s1.getSsn());
		s1.showInfo();
		
		
		Student s2 = new Student("Choi", " 20210202-1235", 110);
		System.out.println(s1.toString());
		System.out.println("�̸� : " + s2.getName());
		System.out.println("��ȣ : " + s2.getSsn());
		System.out.println("�л���ȣ :  " + s2.getStudentNo());
		s2.showInfo();
		People p2 = new Student("Hwang", " 454545455", 120);
//		p1 = new Student("Hwang", " 454545455", 120);

//		Student s3 = new People(); // �ڽ�Ÿ�Կ��� �θ� �Ҵ� �Ұ�
//		p2.getStudentNo();�θ�Ŭ���� �������� �ڽ�Ŭ������ �޼ҵ� ȣ�� �Ұ���
		if (p2 instanceof Student) {
			Student s3 = (Student) p2; // �θ�Ŭ������ �ڽ�Ŭ������ ����ȯ
			s3.getStudentNo();
		}
		if (p1 instanceof Student) {

			Student s4 = (Student) p1;
			s4.getStudentNo();

		} else {
			System.out.println("����ȯ �� �� �����ϴ�.");
		}
	}

}
