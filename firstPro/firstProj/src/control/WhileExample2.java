package control;

import java.util.Scanner;

public class WhileExample2 {

	public static void main(String[] args) {
		String name = "홍길동";
		String age = "20";
		String phone = "010-1234-5678";

		// 사용자의 Scanner 사용
		// 1 => 이름 , 2 =? 나이, 3=> 연락처 , 4=> 종료

		Scanner scn = new Scanner(System.in);
		while (true) {
			System.out.println("메뉴를 선택하세요.");
			System.out.println("1.이름 2.나이 3.연락처 4.종료");
			int menu = scn.nextInt();
			if (menu == 1) {
				System.out.println("이름: " + name);
			} else if (menu == 2) {
				System.out.println("나이: " + age);
			} else if (menu == 3) {
				System.out.println("연락처: " + phone);
			} else if (menu == 4) {
				break;
			}
		}
		System.out.println("끝.");
	}

}
