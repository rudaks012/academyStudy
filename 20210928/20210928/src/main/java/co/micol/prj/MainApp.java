package co.micol.prj;

import co.micol.prj.friend.CompanyFriend;
import co.micol.prj.friend.Friend;
import co.micol.prj.friend.SchoolFriend;

public class MainApp {
	public static void main(String[] args) {
//		DoWhileTest doWhileTest = new DoWhileTest();
//		doWhileTest.run();

//		Animal man = new Man();
//		man.run();
//		man.sleep();
//
//		Animal bird = new Bird();
//		bird.run();
//		bird.sleep();
//		
//		Man man2 = new Man();
//		man.run();
//		man.sleep();

		Friend schoolFriend = new SchoolFriend();
		schoolFriend.name = "ȫ�浿";
		schoolFriend.tel = "010-1234-5678";
		schoolFriend.address = "�뱸������ �߱�";
		schoolFriend.friendPrint();
		
		Friend comFriend = new CompanyFriend();
		comFriend.name = "ȫ���";
		comFriend.tel = "010-1111-2222";
		comFriend.address = "���ﱤ���� ���α�";
		comFriend.friendPrint();

	}
}
