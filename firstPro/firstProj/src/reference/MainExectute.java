package reference;

import java.util.Scanner;

public class MainExectute {

	public static void main(String[] args) {
		// 1.학생수를 지정, 2. 학생이름입력,3.전체리스트 출력 4.종료
		String[] names = null;
		while (true) {
			showMenu(names);
			int choice = readInt("번호를 입력하세요>>");
			if (choice == 1) {
				int list = nameMenu(names);
				names = new String[list];
			} else if (choice == 2) {
				inputname(names);
			} else if (choice == 3) {
				listMenu(names);
			} else if (choice == 4) {
				break;
			}

		}
		System.out.println("끝");

	}

	public static void showMenu(String[] names) {
		System.out.println("1:학생인원 지정, 2: 학생이름, 3: 전체리스트, 4: 끝");
		return;
	}

	public static int nameMenu(String[] names) {
		int cnt = readInt("학생수를 입력하세요.");

		return cnt;

	}

	public static void inputname(String[] names) {
		if (names == null) {
			System.out.println("학생수를 입력하세요");
			return;
		}
		for (int i = 0; i < names.length; i++) {
			names[i] = readInt1("회원 이름을 입력하세요");
		}

	}

	public static void listMenu(String[] names) {
		if (names == null) {
			System.out.println("학생수를 입력하세요");
			return;
		}
		for (int i = 0; i < names.length; i++) {
			// scores[0] -> 88
			System.out.printf("번호 : %d, 이름: %s\n", i+1, names[i]);

		}
	}
		

	public static int readInt(String msg) {
		Scanner scn = new Scanner(System.in);
		System.out.println(msg);
		int menu = scn.nextInt();
		return menu;
	}

	public static String readInt1(String msg) {
		Scanner sc = new Scanner(System.in);
		System.out.println(msg);
		String menu = sc.nextLine();
		return menu;
	}
}
