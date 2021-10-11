package co.micol.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;

public class BoardList implements Command{   //게시글 목록 보는 것. 
   private List<BoardVO> list = new ArrayList<BoardVO>();
//   private BoardService dao = new BoardServiceImpl();
   
   @Override  //인터페이로 수정했으므로 override 표시. 
   public void execute() {
      list = dao.boardSelectList();
      System.out.println("순번 : 작성자    : 작성일자     :    제목       :  조회수  ");
      for(BoardVO vo : list) {
         System.out.print(vo.getBId());
         System.out.print(vo.getBWriter());
         System.out.print(vo.getBWriteDate());
         System.out.print(vo.getBTitle());
         System.out.println(vo.getBHit());   //마지막엔 줄을 바꿔야 하니깐 ln을 붙여줌
      }
   }

}


//=========================
//package co.micol.prj.board.command;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import co.micol.prj.board.service.BoardService;
//import co.micol.prj.board.service.BoardVO;
//import co.micol.prj.board.serviceImpl.BoardServiceImpl;
//
//public class BoardListCommand implements Command { // 게시글 목록보는 것
//	private List<BoardVO> list = new ArrayList<BoardVO>();
//	private BoardService dao = new BoardServiceImpl();
////	private BoardService dao = new BoardServiceImpl();
//
//	@Override
//	public void execute() {
//		list = dao.boardSelectList();
//		System.out.println(
//				"순번  :   작성자       :  작성일자                          :                    제목:                    조회수        ");
//		for (BoardVO vo : list) {
//			System.out.print(vo.getbId() + "  :  ");
//			System.out.print(vo.getbWriter() + "  :  ");
//			System.out.print(vo.getbWriteDate() + "  :  ");
//			System.out.print(vo.getbTitle() + "  :  ");
//			System.out.println(vo.getbHit() + "  :  ");
//
//		}
//	}
//}
