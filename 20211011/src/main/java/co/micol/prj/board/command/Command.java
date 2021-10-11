//package co.micol.prj.board.command;
//
////execute()만 실행하는 인터페이스를 생성. 
//public interface Command {
//   
//   public void execute();    //접근지시자를 달지 않으면 기본적으로 default
//}

//===============
package co.micol.prj.board.command;

import co.micol.prj.board.service.BoardService;
import co.micol.prj.board.service.BoardVO;
import co.micol.prj.board.serviceImpl.BoardServiceImpl;
import co.micol.prj.mybatis.BoardMybatisService;

public interface Command {
//	public BoardService dao = new BoardServiceImpl();
	public BoardService dao = new BoardMybatisService();

	public void execute();

}
