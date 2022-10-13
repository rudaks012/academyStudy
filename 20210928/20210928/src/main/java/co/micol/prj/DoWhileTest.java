package co.micol.prj;

import java.util.Scanner;

public class DoWhileTest {
	private Scanner scn = new Scanner(System.in);

	private void mainMenu() {
		System.out.println("=======================");
		System.out.println("== 1.입력 하기 ===");
		System.out.println("== 2.수정 하기 ===");
		System.out.println("== 3.조회 하기 ===");
		System.out.println("== 4.종료 하기 ===");
		System.out.println("=======================");
		System.out.println("원하는 작업번호를 입력하세요");

	}

	private void firstMenu() {
		System.out.println("================================");
		System.out.println("== 여기는 입력하는 화면 입니다. ==");
		System.out.println("== 메인 메뉴는 아무키나 누르세요. ==");
		System.out.println("================================");
		scn.nextLine();

	}

	private void secondMenu() {
		System.out.println("================================");
		System.out.println("== 여기는 수정하는 화면 입니다. ==");
		System.out.println("== 메인 메뉴는 아무키나 누르세요. ==");
		System.out.println("================================");
		scn.nextLine();
	}

	private void thirdMenu() {
		System.out.println("================================");
		System.out.println("== 여기는 조회하는 화면 입니다. ==");
		System.out.println("== 메인 메뉴는 아무키나 누르세요. ==");
		System.out.println("================================");
		scn.nextLine();
	}

	private void endMenu() {
		System.out.println("=============Good bye===========");

	}

	private void doWhileMenu() {
		boolean b = true; // 초기값을 false로 설정함
		do {
			mainMenu();
			int key = scn.nextInt();
			scn.nextLine(); // 버퍼 클리어 역할
			switch (key) {
			case 1:
				firstMenu();
				break;
			case 2:
				secondMenu();
				break;
			case 3:
				thirdMenu();
				break;
			case 4:
				endMenu();
				b = false; // true
				break;
			}
		} while (b); // (!b)
	}

	public void run() {
		doWhileMenu();
		scn.close(); // 스캐너문은 열었으면 닫아줘야함
	}
}
