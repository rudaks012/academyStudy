package co.bada.prj.menu;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import co.bada.prj.board.serviceImpl.BoardDelete;
import co.bada.prj.board.serviceImpl.BoardInsert;
import co.bada.prj.board.serviceImpl.BoardList;
import co.bada.prj.board.serviceImpl.BoardSelect;
import co.bada.prj.board.serviceImpl.BoardUpdate;
import co.bada.prj.comm.Command;
import co.bada.prj.member.serviceImpl.MemberDelete;
import co.bada.prj.member.serviceImpl.MemberInsert;
import co.bada.prj.member.serviceImpl.MemberList;
import co.bada.prj.member.serviceImpl.MemberLogin;
import co.bada.prj.member.serviceImpl.MemberSelect;
import co.bada.prj.member.serviceImpl.MemberUpdate;

public class Menu {
	private Scanner sc = new Scanner(System.in);
	private Map<String,Command> map = new HashMap<String, Command>();
	
	public Menu() {	// 생성될때 명령 실행그룹 map 구조 만들기
		map.put("boardList", new BoardList());
		map.put("boardSelect", new BoardSelect());
		map.put("boardInsert", new BoardInsert());
		map.put("boardUpdate", new BoardUpdate());
		map.put("boardDelete", new BoardDelete());
		
		map.put("memberList", new MemberList());
		map.put("memberSelect", new MemberSelect());
		map.put("memberInsert", new MemberInsert());
		map.put("memberUpdate", new MemberUpdate());
		map.put("memberUpdate", new MemberUpdate());
		map.put("memberDelete", new MemberDelete());
		map.put("memberLogin", new MemberLogin());
	}

	private void mainTitle() {
		System.out.println("==================");
		System.out.println("====1. 멤버 관리====");
		System.out.println("====2. 공지 관리====");
		System.out.println("====3. 로그인====");
		System.out.println("==== 종    료====");
		System.out.println("==================");
		System.out.println("원하는 작업을 선택하세요.");
	}

	private void memberTitle() {
		System.out.println("======================");
		System.out.println("====1. 회원 목록 조회====");
		System.out.println("====2. 회원 정보 조회====");
		System.out.println("====3. 회원 정보 등록====");
		System.out.println("====4. 회원 정보 수정====");
		System.out.println("====5. 회원 정보 삭제====");
		System.out.println("====6. 메인 메뉴 가기====");
		System.out.println("======================");
		System.out.println("원하는 작업을 선택하세요.");

	}

	private void boardTitle() {
		System.out.println("======================");
		System.out.println("====1. 공지 사항 목록====");
		System.out.println("====2. 공지 사항 조회====");
		System.out.println("====3. 공지 사항 등록====");
		System.out.println("====4. 공지 사항 수정====");
		System.out.println("====5. 공지 사항 삭제====");
		System.out.println("====6. 메인 메뉴 가기====");
		System.out.println("======================");
		System.out.println("원하는 작업을 선택하세요.");
	}

	private void menu() { // 주메뉴 선택
		while (true) {
			mainTitle();
			int jobNo = sc.nextInt();
			if (jobNo == 1) {
				memberMangement();
				continue;
			} else if (jobNo == 2) {
				boardMangement();
				continue;
			}else if (jobNo == 3) {
				executeRun("memberLogin");
				continue;
			} 
			else {
				System.out.println("Gooy bye!!!!");
				return;
			}
		}
	}

	private void boardMangement() {
		boolean b = false;
		do {
			boardTitle();
			int key = sc.nextInt();
			switch (key) {
			case 1:
				executeRun("boardList");
				break;
			case 2:
				executeRun("boardSelect");
				break;
			case 3:
				executeRun("boardInsert");
				break;
			case 4:
				executeRun("boardUpdate");
				break;
			case 5:
				executeRun("boardDelete");
				break;
			case 6:
				b= true;
				break;

			}
		} while (!b);
	}

	private void memberMangement() {
		boolean b = false;
		do {
			memberTitle();
			int key = sc.nextInt();
			switch (key) {

			case 1:
				executeRun("memberList");
				break;
			case 2:
				executeRun("memberSelect");
				break;
			case 3:
				executeRun("memberInsert");
				break;
			case 4:
				executeRun("memberUpdate");
				break;
			case 5:
				executeRun("memberDelete");
				break;
			case 6:
				b = true;
				break;

			}
		} while (!b);

	}

	private void executeRun(String string) {
		//실행할 명령을 구현한다.
		Command command = map.get(string);
		command.execute();
		
	}
	public void run() {
		menu();
		sc.close();
	}
}
