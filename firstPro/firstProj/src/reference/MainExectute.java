package reference;

import java.util.Scanner;

public class MainExectute {

	public static void main(String[] args) {
		// 1.�л����� ����, 2. �л��̸��Է�,3.��ü����Ʈ ��� 4.����
		String[] names = null;
		while (true) {
			showMenu(names);
			int choice = readInt("��ȣ�� �Է��ϼ���>>");
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
		System.out.println("��");

	}

	public static void showMenu(String[] names) {
		System.out.println("1:�л��ο� ����, 2: �л��̸�, 3: ��ü����Ʈ, 4: ��");
		return;
	}

	public static int nameMenu(String[] names) {
		int cnt = readInt("�л����� �Է��ϼ���.");

		return cnt;

	}

	public static void inputname(String[] names) {
		if (names == null) {
			System.out.println("�л����� �Է��ϼ���");
			return;
		}
		for (int i = 0; i < names.length; i++) {
			names[i] = readInt1("ȸ�� �̸��� �Է��ϼ���");
		}

	}

	public static void listMenu(String[] names) {
		if (names == null) {
			System.out.println("�л����� �Է��ϼ���");
			return;
		}
		for (int i = 0; i < names.length; i++) {
			// scores[0] -> 88
			System.out.printf("��ȣ : %d, �̸�: %s\n", i+1, names[i]);

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
