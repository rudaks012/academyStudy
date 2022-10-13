package co.yedam.enumerate;

public class PersonExample {

	public static void main(String[] args) {
		Person p1 = new Person();
		p1.name = "ȫ�浿";
		p1.gender = Gender.Man; // ������ Ÿ�Կ� ����Ǵ� ����
		p1.address = " �뱸��";

		Person p2 = new Person();
		p1.name = "���ϴ�";
		p1.gender = Gender.WOMAN;// ������ Ÿ�Կ� ����Ǵ� ����
		p2.setGender(Gender.WOMAN);
		p1.address = "�����";

		Person[] persons = { p1, p2 };
		for (Person person : persons) {
			if (person.gender == Gender.WOMAN) {
				System.out.println("�̸� : " + person.name);
			}

		}

		// ������ �޼ҵ�.
		Week today = Week.FRIDAY;
		Week[] weeks = Week.values();
		for (Week week : weeks) {
			System.out.println(week.name());
		}
	}

}
