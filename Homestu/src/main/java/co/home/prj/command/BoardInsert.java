package co.home.prj.command;

import java.util.Scanner;

import co.home.prj.board.service.BoardService;
import co.home.prj.board.service.BoardVO;
import co.home.prj.board.serviceImpl.BoardServiceImpl;
import co.home.prj.comm.Command;

public class BoardInsert implements Command {
	private Scanner scn = new Scanner(System.in);

	@Override
	public void execute() {
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		System.out.println("작성자를 입력하세요");
		vo.setBWriter(scn.nextLine());
		System.out.println("제목을 입력하세요");
		vo.setBTitle(scn.nextLine());
		System.out.println("내용을 입력하세요");
		vo.setBContents(scn.nextLine());
		int n = dao.boardInsert(vo);
		if (n != 0) {
			System.out.println("정상적으로 등록되었습니다.");
		} else {
			System.out.println("실패 했습니다.");
		}

	}

}
