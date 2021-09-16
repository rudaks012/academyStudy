package reference;

import java.util.Scanner;

public class MainExectute {

	public static void main(String[] args) {
		// 1.학생수를 지정, 2. 학생이름입력,3.전체리스트 출력 4.종료
		String[] names = null;
		while (true) {
			showMenu();
			int choice = readInt("번호를 입력하세요>>");
			if (choice == 1) {
				int list = nameMenu();
				names = new String[list];
			}else if (choice == 2) {
				inputname(names);
			}else if (choice == 3) {
				listMenu(names);
			}else if (choice == 4) {
				break;
			}

		}
		System.out.println("끝");

	}

	public static void showMenu() {
		System.out.println("1:학생인원 지정, 2: 학생이름, 3: 전체리스트, 4: 끝");
	}

	public static int nameMenu() {
		int cnt = readInt("학생수를 입력하세요.");
		return cnt;

	}
	public static void inputname(String[] ary) {
		
		for (int i =0; i< ary.length; i++) {
			
			
		
	}
	}

	public static void listMenu(String[] names) {
	for (int i = 0; i < names.length; i++) {
			// scores[0] -> 88
			System.out.printf("scores[%d] => %d\n", i, names[i]);

		}
	}

	public static int readInt(String msg) {
		Scanner scn = new Scanner(System.in);
		System.out.println(msg);
		int menu = scn.nextInt();
		return menu;
	}
}
