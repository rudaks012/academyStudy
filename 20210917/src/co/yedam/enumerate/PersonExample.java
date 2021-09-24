package co.yedam.enumerate;

public class PersonExample {

	public static void main(String[] args) {
		Person p1 = new Person();
		p1.name = "홍길동";
		p1.gender = Gender.Man; // 열거형 타입에 선언되는 값만
		p1.address = " 대구시";

		Person p2 = new Person();
		p1.name = "김하늘";
		p1.gender = Gender.WOMAN;// 열거형 타입에 선언되는 값만
		p2.setGender(Gender.WOMAN);
		p1.address = "서울시";

		Person[] persons = { p1, p2 };
		for (Person person : persons) {
			if (person.gender == Gender.WOMAN) {
				System.out.println("이름 : " + person.name);
			}

		}

		// 열거형 메소드.
		Week today = Week.FRIDAY;
		Week[] weeks = Week.values();
		for (Week week : weeks) {
			System.out.println(week.name());
		}
	}

}
