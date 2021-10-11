//package co.micol.prj.board.command;
//
//import co.micol.prj.board.service.BoardService;
//import co.micol.prj.board.service.BoardVO;
//import co.micol.prj.board.serviceImpl.BoardServiceImpl;
//
////command인터페이스를 추가한 클래스 생성. 
//public class BoardSelect implements Command {
//
//   @Override
//   public void execute() {
//      BoardService dao = new BoardServiceImpl();
//      BoardVO board = new BoardVO();
//
//      board.setbId(1); // 한 개 글을 읽고 싶으면,
//      board = dao.boardSelect(board);
//
//      System.out.println(" 번호 : "  + board.getbId());
//      System.out.println(" 작성자 : "  +board.getbWriter());
//      System.out.println(" 작성일자 : "  +board.getbWriteDate());
//      System.out.println(" 제목 : "  +board.getbTitle());
//      System.out.println(" 내용 : "  +board.getbContents());
//      System.out.println(" 조회수 : "  +board.getbHit());
//
//   }
//
//}







//==================
package co.micol.prj.board.command;

import java.util.Scanner;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;

public class BoardSelect implements Command {
	private Scanner scb = new Scanner(System.in);

	@Override
	public void execute() {
//		BoardService dao = new BoardServiceImpl();
		BoardVO board = new BoardVO();
		System.out.println("========================");
		System.out.println("조회할 글 번호를 입력하세요. ");
		board.setBId(scb.nextInt()); 

//		board.setbId(1); // 1번글 가져오기	2번글 넣고싶으면 숫자 2
		board = dao.boardSelect(board);

		System.out.println("번호 : " + board.getBId());
		System.out.println("작성자 : " + board.getBWriter());
		System.out.println("작성일자 : " + board.getBWriteDate());
		System.out.println("제목 : " + board.getBTitle());
		System.out.println("내용 : " + board.getBContents());
		System.out.println("조회수 : " + board.getBHit());

	}

}
