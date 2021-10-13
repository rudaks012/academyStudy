package co.home.prj.command;

import java.util.ArrayList;
import java.util.List;

import co.home.prj.board.service.BoardService;
import co.home.prj.board.service.BoardVO;
import co.home.prj.board.serviceImpl.BoardServiceImpl;
import co.home.prj.comm.Command;

public class BoardList implements Command {

	@Override
	public void execute() {
		BoardService boardDao = new BoardServiceImpl();
		List<BoardVO> boards = new ArrayList<BoardVO>();
		boards = boardDao.boardSelectList();
		
		System.out.println("====공지 사항 목록=====");
		for (BoardVO board : boards) {
			board.toString();
		}
		System.out.println("=====공지 사항 목록 끝======");
	}

}
