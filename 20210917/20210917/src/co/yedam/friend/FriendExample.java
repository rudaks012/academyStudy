package co.yedam.friend;

import java.util.Scanner;

import co.yedam.kyobo.Book;

public class FriendExample {

	static Scanner scn = new Scanner(System.in);

	public static void main(String[] args) {
		FriendMain[] Friend = new FriendMain[100];

		while (true) {
			System.out.println("1.���, 2.��ȸ(�̸�), 3.ģ�� ���, 4.����(�̸�������), 5.���� 9.����");
			Friend[0] = new FriendMain("ȥ�� �����ϴ� �ڹ�", "�ſ��", "�Ѻ����ǻ�", "25000", "5");
			int menu = readInt("�����ϼ���");
			// �̸� , ����ó, email,Ű ������
			if (menu == 1) {
				System.out.println("ģ���� ����ϼ���");
				String Name = readStr("�̸��� �Է��ϼ���");
				String Phone = readStr("�ڵ��� ��ȣ�� �Է��ϼ���");
				String Email = readStr("E-mail�� �Է��ϼ���");
				String height = readStr("Ű�� �Է��ϼ���.");
				String weight = readStr("�����Ը� �Է��ϼ���.");

				FriendMain fr = new FriendMain(Name, Phone, Email, height, weight);
				for (int i = 0; i < Friend.length; i++) {
					if (Friend[i] == null) {
						Friend[i] = fr;
						break;
					}

				}
				System.out.println("����Ϸ�.");

			} else if (menu == 2) {
				System.out.println("ģ�� �̸��� ��ȸ�ϼ���");
				String search = readStr("��ȸ�� �̸��� �Է��ϼ���");
				for (FriendMain fr : Friend) {
					if (fr != null && fr.getName().indexOf(search) != -1)
						fr.showInfo();
				}
			} else if (menu == 3) {
				System.out.println("ģ�� ����� ��ȸ�ϼ���");
				for (FriendMain fr : Friend) {
					if (fr != null) {
						fr.showInfo();
					}
				} 
			} else if (menu == 4) {
				System.out.println("ģ�� �̸��� �����ϼ���");
				String search = readStr("������ �̸��� �Է��ϼ���.[������ҷ��� ����]");
				String Phone = readStr("������ ����ó�� �Է��ϼ���.[������ҷ��� ����]");
				String Email = readStr("������ E-mail�� �Է��ϼ���.[������ҷ��� ����]");
				String height = readStr("������ Ű�� �Է��ϼ���.[������ҷ��� ����]");
				String weight = readStr("������ �����Ը� �Է��ϼ���.[������ҷ��� ����]");
				
				boolean isExist = false;
				for (int i = 0; i <Friend.length; i++) {
					
					if(Friend[i] != null && Friend[i].getName().equals(search)) {
						if (!Phone.equals("")) {
							Friend[i].setPhone(Phone);
						}if (!Email.equals("")) {
							Friend[i].setPhone(Email);
						}if (!height.equals("")) {
							Friend[i].setPhone(height);
						}if (!weight.equals("")) {
							Friend[i].setPhone(weight);
						}
						isExist = true;
					}
				}
				if(isExist) {
					System.out.println("���������� �����Ͽ����ϴ�");
				}else {
					System.out.println("å�� ã���� �����ϴ�.");
				}
				
			
				
				
				
			} else if (menu == 5) {
				System.out.println("ģ�� �̸��� �����ϼ���");
				String search = readStr("������ �̸��� �Է��ϼ���.");
				for (int i = 0; i < Friend.length; i++) {
					if (Friend[i] != null && Friend[i].getName().indexOf(search) != -1)
						Friend[i] = null;
				}
				System.out.println("���� �Ϸ�");
			} else if (menu == 9) {
				System.out.println("���� �޴� �Դϴ�.");
				break;
			}
		}
		System.out.println("=====��====");

	}

	public static String readStr(String msg) {
		System.out.println(msg);
		return scn.nextLine();
	}

	public static int readInt(String msg) {
		System.out.println(msg);
		int result = 0;
		while (true) {
			String val = scn.nextLine();
			try {
				result = Integer.parseInt(val);
				break;
			} catch (Exception e) {
				System.out.println("�߸��� ���� �Է��߽��ϴ�. �ٽ� �Է� �ϼ���.");
			}

		}
		return result;
	}

}
