package Firsttest;

public class PersonExe {
	private static PersonExe singleton = new PersonExe();
	private Person[] persons;

	private PersonExe() {
		persons = new Person[100];
		persons[0] = new Person("ȫ�浿", Gender.MAN, "010-123-456");
		persons[5] = new Person("ȫ���", Gender.WOMAN, "010-343-3434");
		persons[1] = new Person("���浿", Gender.MAN, "010-3454-1314");
		persons[2] = new Person("����", Gender.WOMAN, "010-5454-4545");
		persons[3] = new Student("����", Gender.WOMAN, "010-5454-4545", "������");
		persons[4] = new Worker("���浿", Gender.MAN, "010-3454-1314", "���ٶ�");
	}

	public static PersonExe getInstance() {
		return singleton;
	}

	public void execute() {
		while (true)

		{
			System.out.println("---------------------------------------------");
			System.out.println("1.�߰�  2. ��ȸ 3.���� 4. ���� 5. ����");
			System.out.println("----------------------------------------------");

			int menu = ScanUtil.readInt("�޴��� �����ϼ���.");

			if (menu == 1) {
				System.out.println("ģ���� �߰��ϼ���");
				add();
			} else if (menu == 2) {
				System.out.println("ģ���� ��ȸ�ϼ���");

			} else if (menu == 3) {
				System.out.println("ģ���� �����ϼ���");

			} else if (menu == 4) {
				System.out.println("ģ���� �����ϼ���");

			} else if (menu == 5) {
				System.out.println("����");
				break;
			}

		}
		System.out.println("���α׷��� �����մϴ�.");
	}

	private void add() {
		System.out.println("1.�Ϲ� 2.�б� 3.����");
		int choice = ScanUtil.readInt("�޴��� �߰�");

		String name = ScanUtil.readstr("�̸� �Է�");
		String gender = ScanUtil.readstr("������ �Է�");
		String phone = ScanUtil.readstr("����ó  �Է�");
		Person person = null;
		if (choice == 1) {
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null) {
					while (true) {

						if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("�߸� �Է��Ͽ����ϴ�.");
						}

					}

				}
				break;
			}
		} else if (choice == 2) {
			String school = ScanUtil.readstr("�б��� �Է�");
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null) {
					while (true) {

						if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("�߸� �Է��Ͽ����ϴ�.");
						}

					}
					break;

				}
			}

		} else if (choice == 3) {
			String company = ScanUtil.readstr("ȸ�縦 �Է�");
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null)
					while (true) {

						if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("����") || gender.equals("��")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("�߸� �Է��Ͽ����ϴ�.");
						}
						
					}
				break;

			}
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null) {
					persons[i] = person;
					break;
				}
			}
			
		}System.out.println("��� ����.");

//			person = new Person(name, gender, phone);
//		} else if (choice ==2) {
//			String school = ScanUtil.readstr("�б� �Է�");
//			person = new Student(name, gender, phone,school);
//		}else if (choice ==3 ) {
//			String company = ScanUtil.readstr("ȸ�� �Է�");
//			person = new Worker(name, gender, phone,company);
//		}

	}

	private void list() {
		String name;
		String phone;
		String gender;

	}

	private void modify() {

	}

	private void remove() {

	}
	

}
