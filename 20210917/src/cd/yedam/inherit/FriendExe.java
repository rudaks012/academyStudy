package cd.yedam.inherit;

import co.yedam.ScanUtil;

public class FriendExe {

	private static FriendExe singleton = new FriendExe();
	private Friend[] friends;

	private FriendExe() {
		// 친구, 학교친구, 회사친구 = 배열에 저장.
		// CompFriend -> Friend, UnivFriend - > Friend
		// 제일 상위 클래스로 설정하면 하위 클래스 배열 설정 가능
		friends = new Friend[100];
		friends[0] = new Friend("홍길동", "111-1211");
		friends[5] = new Friend("홍길동", "111-1222");
		friends[1] = new Friend("정길동", "222-1211");
		friends[2] = new Friend("김길동", "333-1211");
		friends[3] = new UnivFriend("박수진", "2345-1234", "수학과");
		friends[4] = new CompFriend("김철수", "2222-1212", "영업부");
	}

	public static FriendExe getInstance() {
		return singleton;
	}

	public void execute() {
		while (true) {
			System.out.println("------------------------");
			System.out.println("1.친구등록 2.조회 3.수정 4.삭제 5.종료");
			System.out.println("------------------------");

			int menu = ScanUtil.readInt("메뉴를 선택하세요."); // -> static 사용하여 정적으로 사용함

//		ScanUtil su = new ScanUtil();	//인스턴스 메모리 할당	
//		su.readInt(null);
			if (menu == 1) {
				System.out.println("친구를 등록하세요");
				addfriend();
			} else if (menu == 2) {
				System.out.println("친구를 조회하세요");
				showlist();
			} else if (menu == 3) {
				System.out.println("친구를 수정하세요");
				modify();
			} else if (menu == 4) {
				System.out.println("친구를 삭제하세요");
				remove();
			} else if (menu == 5) {
				System.out.println("종료합니다.");
				break;
			}

		}
		System.out.println("프로그램이 끝났습니다.");
	}

	private void addfriend() {
		// 친구, 학교친구, 회사친구
		System.out.println("1. 친구 2.학교친구 3.회사친구");
		int choice = ScanUtil.readInt("메뉴를 선택");

		String name = ScanUtil.readStr("친구이름 입력");
		String phone = ScanUtil.readStr("연락처를 입력");
		Friend friend = null;
		if (choice == 1) {
			friend = new Friend(name, phone);
		} else if (choice == 2) {
			String major = ScanUtil.readStr("전공입력");
			friend = new UnivFriend(name, phone, major);
		} else if (choice == 3) {
			String depart = ScanUtil.readStr("부서입력");
			friend = new CompFriend(name, phone, depart);
		}

		for (int i = 0; i < friends.length; i++) {
			if (friends[i] == null) {
				friends[i] = friend;
				break;
			}
		}
		System.out.println("등록 성공."); 

	}

	private void showlist() {
		// 이름, 연락처 입력 -> 이름이면 이름 연락처면 연락처로 조회 / 홍길동,김길동 -> "길동" 이면 둘다
		// 1111-1211 , 2222-1211 1211- > 같은 값
		// 길동, 1211 -> 이름 & 연락처.

		/*
		 * 그 이름만 입력 받았는지, 번호만 입력을 받았는지, 둘다 입력받았는지 둘 다 입력을 안받으면 = 다시 입력을 받아야 해요.
		 */

		String name;
		String phone;
		while (true) {
			name = ScanUtil.readStr("조회할 이름을 입력하세요");
			phone = ScanUtil.readStr("조회할 번호를 입력");

			if (name.equals("") && phone.equals("")) {
				System.out.println("다시 입력하세요 !");
			} else
				break;
			// else = 뭐 하나라도 입력을 받았다
		}

		// 이름을 입력을 안받고, 연락처만 입력을 받은 경우.
		/*
		 * 3가지 경우 1. 둘 다 입력을 받은 경우 2. 이름만 입력을 받은 경우 3. 번호만 입력을 받은 경우 이거를 if else 문으로 처리
		 * 
		 * A.equals(B) == true : 문자열 A와 B가 동일한 문자열이다. == false : 문자열 A와 B가 다른 문자열이다.
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
//
//				}
//				// 둘 다 입력을 받았다는 얘기
//				// 밑에 부분ㅇ니 들어오면 된다.
//			} else if (name.equals("") == true && phone.equals("") == false) {
//				if (friends[i].getPhone().indexOf(phone) != -1) {
//					System.out.println(friends[i].toString());
//				}
//					
//			}
//				 else if (name.equals("") == false && phone.equals("") == true) {
//					if (friends[i].getName().indexOf(name) != -1) {
//						System.out.println(friends[i].toString());
//					}
//					// indexof 그 과정으로 하시면 되요.
//				}
//
//			}
	}

	private void modify() {

		System.out.println("[친구목록]");
		for (int i = 0; i < friends.length; i++) {
			if (friends[i] != null)
				System.out.println("[" + i + "]" + friends[i].toString());
		}
		int num = ScanUtil.readInt("친구를 선택하세요.");
		String phone = ScanUtil.readStr("바꿀 번호를 입력하세요.");
		if (phone.equals("") == false) {
			friends[num].setPhone(phone);
		}

		if (friends[num] instanceof UnivFriend) {

			String major = ScanUtil.readStr("바꿀 전공을 입력하세요.");
			if (phone.equals("") == true && major.equals("") == false) {
				System.out.println("전화번호를 바꾸지 않습니다.");
				((UnivFriend) friends[num]).setMajor(major);
			} else if (phone.equals("") == false && major.equals("") == true) {
				System.out.println("전공을 바꾸지 않습니다.");
				((UnivFriend) friends[num]).setMajor(major);
			}

		} else if (friends[num] instanceof CompFriend) {
			String depart = ScanUtil.readStr("바꿀 부서를 입력하세요.");
			if (phone.equals("") == true && depart.equals("") == false) {
				System.out.println("전화번호를 바꾸지 않습니다.");
				((UnivFriend) friends[num]).setMajor(depart);
			} else if (phone.equals("") == false && depart.equals("") == true) {
				System.out.println("부서명을 바꾸지 않습니다.");
				((UnivFriend) friends[num]).setMajor(depart);
			}

		}
		System.out.println("수정완료");
	}

	private void remove() {
		System.out.println("[친구목록]");
		for (int i = 0; i < friends.length; i++) {
			if (friends[i] != null)
				System.out.println("[" + i + "]" + friends[i].toString());
		}

		int num = ScanUtil.readInt("삭제할 친구를 선택하세요");
		if (friends[num] != null) {
			friends[num] = null;
			System.out.println("삭제 완료.");

		} else {
			System.out.println("삭제할 정보가 없습니다.");
		}

	}
}
