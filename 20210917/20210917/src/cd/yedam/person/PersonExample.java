package cd.yedam.person;

public class PersonExample {
	public static void main(String[] args) {
		// �����̸� p1 Ű ,������
		// p2,p3
		// family -> �������� (�̸�,������,����) : ����1

		// Ű�� 165 �̻� ������ ��� (�̸�, Ű ,������)
		// family �������� ab���� ����� ��������
		// "ȫ�浿", 180, 170, "B", 28
		
		
		
		
//		Car c1 = new Car();
//		c1.carModel = "�ҳ�Ÿ";
//		c1.carName = "EFSonata";
////		c1.maxSpped = -110;
//		c1.setMaxSpped(-100);
//		
//		
		
		
		
		
		Person p1 = new Person("ȫ�浿 ", 180, 170, "B", 28);

		p1.setName("ȫ�浿");
		p1.setheight(180);
		p1.setweight(170);
		p1.setRH("B");
		p1.setage(28);
		p1.showInfo();
		Person p2 = new Person("¯�� ", 175, 75, "A", 25);
		p2.showInfo();
		Person p3 = new Person("ö�� ", 160, 50, "C", 20);
		p3.showInfo();

		Person[] family = { p1, p2, p3 };
		for (int i = 0; i < family.length; i++) {
			System.out.println(family[i].getName() + " : " + family[i].getheight() + " : " + family[i].getweight());
		}

		System.out.println("=========��1======");

		for (int i = 0; i < family.length; i++) {
			if (family[i].getheight() > 165) {
				System.out.println(family[i].getName() + "�� Ű�� 165 �̻� �̸�" + family[i].getheight() + "cm �Դϴ�");
			}

		}
		System.out.println("==================��2=============");
		p3.setRH("AB");
		for (int i = 0; i < family.length; i++) {
			if (family[i].getRH().equals("AB")) {
				System.out.println(family[i].getName() + "�� ��������" + family[i].getRH() + "�Դϴ�");
			} else {
				System.out.println(family[i].getName()+ "�������� AB���� �ƴմϴ�.");
			}

		} System.out.println("===========��3=============");

	}

}
