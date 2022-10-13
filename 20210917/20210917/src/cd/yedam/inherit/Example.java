package cd.yedam.inherit;

public class Example {
	public static void main(String[] args) {
		People p1 = new People("홍길동", "151515-1515151");
		System.out.println("이름 : " + p1.getName());
		System.out.println("번호 : " + p1.getSsn());
		p1.showInfo();
		System.out.println(p1.toString());

		Student s1 = new Student("Park", "1212-1421");
		System.out.println("이름 : " + s1.getName());
		System.out.println("번호 : " + s1.getSsn());
		s1.showInfo();
		
		
		Student s2 = new Student("Choi", " 20210202-1235", 110);
		System.out.println(s1.toString());
		System.out.println("이름 : " + s2.getName());
		System.out.println("번호 : " + s2.getSsn());
		System.out.println("학생번호 :  " + s2.getStudentNo());
		s2.showInfo();
		People p2 = new Student("Hwang", " 454545455", 120);
//		p1 = new Student("Hwang", " 454545455", 120);

//		Student s3 = new People(); // 자식타입에는 부모 할당 불가
//		p2.getStudentNo();부모클래스 변수에는 자식클래스에 메소드 호출 불가능
		if (p2 instanceof Student) {
			Student s3 = (Student) p2; // 부모클래스를 자식클래스로 형변환
			s3.getStudentNo();
		}
		if (p1 instanceof Student) {

			Student s4 = (Student) p1;
			s4.getStudentNo();

		} else {
			System.out.println("형변환 할 수 없습니다.");
		}
	}

}
