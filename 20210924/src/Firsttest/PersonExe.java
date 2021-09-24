package Firsttest;

public class PersonExe {
	private static PersonExe singleton = new PersonExe();
	private Person[] persons;

	private PersonExe() {
		persons = new Person[100];
		persons[0] = new Person("홍길동", Gender.MAN, "010-123-456");
		persons[5] = new Person("홍길순", Gender.WOMAN, "010-343-3434");
		persons[1] = new Person("정길동", Gender.MAN, "010-3454-1314");
		persons[2] = new Person("김길순", Gender.WOMAN, "010-5454-4545");
		persons[3] = new Student("김길순", Gender.WOMAN, "010-5454-4545", "가나다");
		persons[4] = new Worker("정길동", Gender.MAN, "010-3454-1314", "나다라");
	}

	public static PersonExe getInstance() {
		return singleton;
	}

	public void execute() {
		while (true)

		{
			System.out.println("---------------------------------------------");
			System.out.println("1.추가  2. 조회 3.수정 4. 삭제 5. 종료");
			System.out.println("----------------------------------------------");

			int menu = ScanUtil.readInt("메뉴를 선택하세요.");

			if (menu == 1) {
				System.out.println("친구를 추가하세요");
				add();
			} else if (menu == 2) {
				System.out.println("친구를 조회하세요");

			} else if (menu == 3) {
				System.out.println("친구를 수정하세요");

			} else if (menu == 4) {
				System.out.println("친구를 삭제하세요");

			} else if (menu == 5) {
				System.out.println("종료");
				break;
			}

		}
		System.out.println("프로그램을 종료합니다.");
	}

	private void add() {
		System.out.println("1.일반 2.학교 3.직장");
		int choice = ScanUtil.readInt("메뉴를 추가");

		String name = ScanUtil.readstr("이름 입력");
		String gender = ScanUtil.readstr("성별을 입력");
		String phone = ScanUtil.readstr("연락처  입력");
		Person person = null;
		if (choice == 1) {
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null) {
					while (true) {

						if (gender.equals("남자") || gender.equals("남")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("여자") || gender.equals("여")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("잘못 입력하였습니다.");
						}

					}

				}
				break;
			}
		} else if (choice == 2) {
			String school = ScanUtil.readstr("학교를 입력");
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null) {
					while (true) {

						if (gender.equals("남자") || gender.equals("남")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("여자") || gender.equals("여")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("잘못 입력하였습니다.");
						}

					}
					break;

				}
			}

		} else if (choice == 3) {
			String company = ScanUtil.readstr("회사를 입력");
			for (int i = 0; i < persons.length; i++) {
				if (persons[i] == null)
					while (true) {

						if (gender.equals("남자") || gender.equals("남")) {
							persons[i] = new Person(name, Gender.MAN, phone);
							break;
						} else if (gender.equals("여자") || gender.equals("여")) {
							persons[i] = new Person(name, Gender.WOMAN, phone);
							break;
						} else {
							System.out.println("잘못 입력하였습니다.");
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
			
		}System.out.println("등록 성공.");

//			person = new Person(name, gender, phone);
//		} else if (choice ==2) {
//			String school = ScanUtil.readstr("학교 입력");
//			person = new Student(name, gender, phone,school);
//		}else if (choice ==3 ) {
//			String company = ScanUtil.readstr("회사 입력");
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
