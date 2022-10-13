package FriendManual;

import java.util.Scanner;

public class FriendFormat {
	
	private Scanner scn = new Scanner(System.in);
	public Friend[] friends = new Friend[100];
	Friend[] schoolFriends = new SchoolFriend[100];
	Friend[] comFriends = new ComFriend[100];

public FriendFormat(){
	friends[0] = new SchoolFriend("안경만", "010-4886-1663", "대구광역시", "학교친구");
	friends[1] = new ComFriend("아나고", "012-3456-789", "광역시", "회사동료");
	friends[2] = new SchoolFriend("소불고기", "123-456-789", "서울", "학교친구");
	friends[3] = new ComFriend("제육", "789-456-123", "서울", "회사동료");
	
	
}

	private void mainmenu() {
		System.out.println("==========================================");
		System.out.println("1.친구등록 || 2. 친구조회 || 3. 친구수정 ||4. 종료");
		System.out.println("==========================================");
		System.out.println("원하는 작업번호를 입력하세요");

	}

	private void firstmenu() {

		System.out.println("=======친구 등록 메뉴=========");
		System.out.println("등록할 친구를 이름을 입력하세요");
		String name = scn.nextLine();
		scn.nextLine();
		System.out.println("등록할 친구를 번호를 입력하세요");
		String tel = scn.nextLine();
		System.out.println("등록할 친구의 주소를 입력하세요");
		String address = scn.nextLine();
		System.out.println("학교친구");
		String school = scn.nextLine();
		String com = scn.nextLine();
		int menu = scn.nextInt();

		if (menu == 1) {
			for (int i = 0; i < friends.length; i++) {
				if (friends[i] == null) {
					friends[i] = new SchoolFriend(name, tel, address, school);
				}

			}

		} else if (menu == 2) {
			for (int i = 0; i < friends.length; i++) {
				if (friends[i] == null) {
					friends[i] = new ComFriend(name, tel, address, com);
				}
			}

		}
		System.out.println("등록이 완료 되었습니다.");
	}

	private void secondmenu() {
		System.out.println("=======친구 조회 메뉴=========");
		System.out.println("친구 이름을 조회하세요");
		String name;
		String tel;
		String address;
		String 

	}

	private void thirdmenu() {
		System.out.println("=======친구 수정 메뉴=========");

	}

	private void endmenu() {
		System.out.println("=============Good bye===========");

	}

	private void whilemenu() {
		boolean b = false;

		do {
			mainmenu();
			int key = scn.nextInt(); // 입력받은것
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
