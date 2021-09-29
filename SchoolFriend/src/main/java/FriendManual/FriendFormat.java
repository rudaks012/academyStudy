package FriendManual;

import java.util.Scanner;

public class FriendFormat {
	private Scanner scn = new Scanner(System.in);
	public Friend[] friends = new Friend[100];
	Friend[] schoolFriends = new SchoolFriend[100];	
	Friend[] comFriends = new ComFriend[100];
	
	
//	friends[0] = new Friend("�Ȱ游","010-4886-1663","�뱸������");	
//	friends[1] = new friend();
//	friends[2] = new Friend("�Ƴ���","012-3456-789","������","ȸ�絿��");
//	friends[3] = new Friend("�ҺҰ��","123-456-789","����","�б�ģ��");
//	friends[4] = new Friend("����","789-456-123","����","ȸ�絿��");


	private void mainmenu() {
		System.out.println("==========================================");
		System.out.println("1.ģ����� || 2. ģ����ȸ || 3. ģ������ ||4. ����");
		System.out.println("==========================================");
		System.out.println("���ϴ� �۾���ȣ�� �Է��ϼ���");

	}

	private void firstmenu() {
		System.out.println("=======ģ�� ��� �޴�=========");
		System.out.println("����� ģ���� �̸��� �Է��ϼ���");
		String name = scn.nextLine();
		scn.nextLine();
		System.out.println("����� ģ���� ��ȣ�� �Է��ϼ���");

		String tel = scn.nextLine();
		System.out.println("����� ģ���� �ּҸ� �Է��ϼ���");
		String address = scn.nextLine();
		System.out.println("�б�ģ�� �ΰ�(1)? ȸ�絿�� �ΰ�(2)?");

		int menu = scn.nextInt();

		if (menu == 1) {
			for (int i = 0; i < friends.length; i++) {
				if (friends[i] == null) {
					friends[i] = new SchoolFriend();
				}

			}

		} else if (menu == 2) {
			for (int i = 0; i < friends.length; i++) {
				if (friends[i] == null) {
					friends[i] = new ComFriend();
				}
			}

		}
		System.out.println("����� �Ϸ� �Ǿ����ϴ�.");
	}

	private void secondmenu() {
		System.out.println("=======ģ�� ��ȸ �޴�=========");
		System.out.println("ģ�� �̸��� ��ȸ�ϼ���");
		String name;
		String tel;
		String address;
		

	}

	private void thirdmenu() {
		System.out.println("=======ģ�� ���� �޴�=========");

	}

	private void endmenu() {
		System.out.println("=============Good bye===========");

	}

	private void whilemenu() {
		boolean b = false;
		do {
			mainmenu();
			int key = scn.nextInt(); // �Է¹�����
			switch (key) {
			case 1:
				firstmenu();
				break;
			case 2:
				secondmenu();
				break;
			case 3:
				thirdmenu();
				break;
			case 4:
				endmenu();
				b = true;
				break;
			}
		} while (!b);
	}

	public void run() {
		whilemenu();
		scn.close();
	}

}
