package reference;

import java.util.Scanner;

public class MainExectute {

	public static void main(String[] args) {
		// 1.�л����� ����, 2. �л��̸��Է�,3.��ü����Ʈ ��� 4.����
		String[] names = null;
		while (true) {
			showMenu();
			int choice = readInt("��ȣ�� �Է��ϼ���>>");
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
		System.out.println("��");

	}

	public static void showMenu() {
		System.out.println("1:�л��ο� ����, 2: �л��̸�, 3: ��ü����Ʈ, 4: ��");
	}

	public static int nameMenu() {
		int cnt = readInt("�л����� �Է��ϼ���.");
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
