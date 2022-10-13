package co.home.prj.comm;

import java.util.HashMap;
import java.util.Map;

import co.home.prj.command.BoardDelete;
import co.home.prj.command.BoardInsert;
import co.home.prj.command.BoardList;
import co.home.prj.command.BoardSelect;
import co.home.prj.command.BoardUpdate;
import co.home.prj.command.MemberDelete;
import co.home.prj.command.MemberInsert;
import co.home.prj.command.MemberList;
import co.home.prj.command.MemberSelect;
import co.home.prj.command.MemberUpdate;

public class Menu {
	private Map<String, Command> map = new HashMap<String, Command>();

	private void init() { // 생성될때 명령 실행그룹 map 구조 만들기
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
	}

	private void mainTitle() {
		System.out.println("==================");
		System.out.println("====1. 멤버 관리====");
		System.out.println("====2. 공지 관리====");
		System.out.println("==== 3.종    료====");
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
			int jobNo = GB.sc.nextInt();
			switch (jobNo) {
			case 1:
				memberMangement();
				break;
			case 2:
				boardMangement();
				break;
			case 3:
				System.out.println("시스템 종료");
				GB.sc.close();
				return;
			default:
				System.out.println("잘못된 키를 입력하였습니다.");
			}

		}
	}

	private void boardMangement() {
		boolean b = false;
		do {
			boardTitle();
			int key = GB.sc.nextInt();
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
				System.out.println("메뉴화면으로 돌아갑니다.");
				b = true;
				break;
			default:
				System.out.println("잘못된 키를 입력했습니다.");
			}
		} while (!b);
	}

	private void memberMangement() {
		boolean b = false;
		do {
			memberTitle();
			int key = GB.sc.nextInt();
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
				System.out.println("메뉴화면으로 돌아갑니다.");
				b = true;
				break;
			default:
				System.out.println("잘못된 키를 입력했습니다.");

			}
		} while (!b);

	}

	private void executeRun(String string) {
		// 실행할 명령을 구현한다.
		Command command = map.get(string);
		command.execute();

	}

	public void run() {
		init();
		menu();
	}
}
