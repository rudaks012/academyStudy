package cd.yedam.inherit;

import co.yedam.ScanUtil;

public class FriendExe {

	private static FriendExe singleton = new FriendExe();
	private Friend[] friends;

	private FriendExe() {
		// ģ��, �б�ģ��, ȸ��ģ�� = �迭�� ����.
		// CompFriend -> Friend, UnivFriend - > Friend
		// ���� ���� Ŭ������ �����ϸ� ���� Ŭ���� �迭 ���� ����
		friends = new Friend[100];
		friends[0] = new Friend("ȫ�浿", "111-1211");
		friends[5] = new Friend("ȫ�浿", "111-1222");
		friends[1] = new Friend("���浿", "222-1211");
		friends[2] = new Friend("��浿", "333-1211");
		friends[3] = new UnivFriend("�ڼ���", "2345-1234", "���а�");
		friends[4] = new CompFriend("��ö��", "2222-1212", "������");
	}

	public static FriendExe getInstance() {
		return singleton;
	}

	public void execute() {
		while (true) {
			System.out.println("------------------------");
			System.out.println("1.ģ����� 2.��ȸ 3.���� 4.���� 5.����");
			System.out.println("------------------------");

			int menu = ScanUtil.readInt("�޴��� �����ϼ���."); // -> static ����Ͽ� �������� �����

//		ScanUtil su = new ScanUtil();	//�ν��Ͻ� �޸� �Ҵ�	
//		su.readInt(null);
			if (menu == 1) {
				System.out.println("ģ���� ����ϼ���");
				addfriend();
			} else if (menu == 2) {
				System.out.println("ģ���� ��ȸ�ϼ���");
				showlist();
			} else if (menu == 3) {
				System.out.println("ģ���� �����ϼ���");
				modify();
			} else if (menu == 4) {
				System.out.println("ģ���� �����ϼ���");
				remove();
			} else if (menu == 5) {
				System.out.println("�����մϴ�.");
				break;
			}

		}
		System.out.println("���α׷��� �������ϴ�.");
	}
 
	private void addfriend() {
		// ģ��, �б�ģ��, ȸ��ģ��
		System.out.println("1. ģ�� 2.�б�ģ�� 3.ȸ��ģ��");
		int choice = ScanUtil.readInt("�޴��� ����");

		String name = ScanUtil.readStr("ģ���̸� �Է�");
		String phone = ScanUtil.readStr("����ó�� �Է�");
		Friend friend = null;
		if (choice == 1) {
			friend = new Friend(name, phone);
		} else if (choice == 2) {
			String major = ScanUtil.readStr("�����Է�");
			friend = new UnivFriend(name, phone, major);
		} else if (choice == 3) {
			String depart = ScanUtil.readStr("�μ��Է�");
			friend = new CompFriend(name, phone, depart);
		}

		for (int i = 0; i < friends.length; i++) {
			if (friends[i] == null) {
				friends[i] = friend;
				break;
			}
		}
		System.out.println("��� ����.");

	}

	private void showlist() {
		// �̸�, ����ó �Է� -> �̸��̸� �̸� ����ó�� ����ó�� ��ȸ / ȫ�浿,��浿 -> "�浿" �̸� �Ѵ�
		// 1111-1211 , 2222-1211 1211- > ���� ��
		// �浿, 1211 -> �̸� & ����ó.

		/*
		 * �� �̸��� �Է� �޾Ҵ���, ��ȣ�� �Է��� �޾Ҵ���, �Ѵ� �Է¹޾Ҵ��� �� �� �Է��� �ȹ����� = �ٽ� �Է��� �޾ƾ� �ؿ�.
		 */

		String name;
		String phone;
		while (true) {
			name = ScanUtil.readStr("��ȸ�� �̸��� �Է��ϼ���");
			phone = ScanUtil.readStr("��ȸ�� ��ȣ�� �Է�");

			if (name.equals("") && phone.equals("")) {
				System.out.println("�ٽ� �Է��ϼ��� !");
			} else
				break;
			// else = �� �ϳ��� �Է��� �޾Ҵ�
		}

		// �̸��� �Է��� �ȹް�, ����ó�� �Է��� ���� ���.
		/*
		 * 3���� ��� 1. �� �� �Է��� ���� ��� 2. �̸��� �Է��� ���� ��� 3. ��ȣ�� �Է��� ���� ��� �̰Ÿ� if else ������ ó��
		 * 
		 * A.equals(B) == true : ���ڿ� A�� B�� ������ ���ڿ��̴�. == false : ���ڿ� A�� B�� �ٸ� ���ڿ��̴�.
		 */
		for (int i = 0; i < friends.length; i++) {
			if (friends[i] != null) {
				if (!name.equals("") && !phone.equals("")) {
					if (friends[i].getName().indexOf(name) != -1 && friends[i].getPhone().indexOf(phone) != -1)
						System.out.println(friends[i].toString());
				} else if (!phone.equals("")) {
					if (friends[i].getPhone().indexOf(phone) != -1)
						System.out.println(friends[i].toString());
				} else if (!name.equals("")) {
					if (friends[i].getName().indexOf(name) != -1)
						System.out.println(friends[i].toString());
				} else {
					System.out.println(friends[i].toString());
				}
			}

		}

//			if (name.equals("") == false && phone.equals("") == false) {
//				if (friends[i].getName().indexOf(name) != -1 && friends[i].getPhone().indexOf(phone) != -1) {
//				}
//				// �� �� �Է��� �޾Ҵٴ� ���
//				// �ؿ� �κФ��� ������ �ȴ�.
//			} else if (name.equals("") == true && phone.equals("") == false) {
//				if (friends[i].getPhone().indexOf(phone) != -1) {
//					System.out.println(friends[i].toString());
//				}
//			}
//				 else if (name.equals("") == false && phone.equals("") == true) {
//					if (friends[i].getName().indexOf(name) != -1) {
//						System.out.println(friends[i].toString());
//					}
//					// indexof �� �������� �Ͻø� �ǿ�.
//				}
//
//			}
	}

	private void modify() {

		System.out.println("[ģ�����]");
		for (int i = 0; i < friends.length; i++) {
			if (friends[i] != null)
				System.out.println("[" + i + "]" + friends[i].toString());
		}
		int num = ScanUtil.readInt("ģ���� �����ϼ���.");
		String phone = ScanUtil.readStr("�ٲ� ��ȣ�� �Է��ϼ���.");
		if (phone.equals("") == false) {
			friends[num].setPhone(phone);
		}

		if (friends[num] instanceof UnivFriend) {

			String major = ScanUtil.readStr("�ٲ� ������ �Է��ϼ���.");
			if (phone.equals("") == true && major.equals("") == false) {
				System.out.println("��ȭ��ȣ�� �ٲ��� �ʽ��ϴ�.");
				((UnivFriend) friends[num]).setMajor(major);
			} else if (phone.equals("") == false && major.equals("") == true) {
				System.out.println("������ �ٲ��� �ʽ��ϴ�.");
				((UnivFriend) friends[num]).setMajor(major);
			}

		} else if (friends[num] instanceof CompFriend) {
			String depart = ScanUtil.readStr("�ٲ� �μ��� �Է��ϼ���.");
			if (phone.equals("") == true && depart.equals("") == false) {
				System.out.println("��ȭ��ȣ�� �ٲ��� �ʽ��ϴ�.");
				((UnivFriend) friends[num]).setMajor(depart);
			} else if (phone.equals("") == false && depart.equals("") == true) {
				System.out.println("�μ����� �ٲ��� �ʽ��ϴ�.");
				((UnivFriend) friends[num]).setMajor(depart);
			}

		}
		System.out.println("�����Ϸ�");
	}

	private void remove() {
		System.out.println("[ģ�����]");
		for (int i = 0; i < friends.length; i++) {
			if (friends[i] != null)
				System.out.println("[" + i + "]" + friends[i].toString());
		}

		int num = ScanUtil.readInt("������ ģ���� �����ϼ���");
		if (friends[num] != null) {
			friends[num] = null;
			System.out.println("���� �Ϸ�.");

		} else {
			System.out.println("������ ������ �����ϴ�.");
		}

	}
}
