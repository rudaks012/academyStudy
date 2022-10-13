//package co.micol.prj;
//
//import java.io.IOException;
//
//import co.micol.prj.board.command.BoardListCommand;
//import co.micol.prj.board.command.BoardSelect;
//import co.micol.prj.board.command.Command;
//import co.micol.prj.comm.BoardMenu;
//
//public class MainApp {
//   
//   public static void main(String[] args) throws IOException {
////      BoardListCommand blist = new BoardListCommand();  
////      blist.execute();
//      
//      //1번조회. 2번조회하고 싶으면 BoardSelect에 가서 setbId()에 2를 넣어준다. 
////      Command command = new BoardSelect();
////      command.execute();
//      
//      BoardMenu boardMenu = new BoardMenu();
//      boardMenu.run();
//   }
//}

package co.micol.prj;

import java.io.IOException;

import co.micol.prj.board.command.BoardList;
import co.micol.prj.board.command.BoardSelect;
import co.micol.prj.board.command.Command;
import co.micol.prj.comm.BoardMenu;

public class MainApp {
	public static void main(String[] args) throws IOException{
		//게시판 프로젝트
		//vo생성 , data생성 , interface 생성, 구현체 생성
		
		BoardMenu boardMenu = new BoardMenu();
		boardMenu.run();
		
		
//		BoardListCommand blist = new BoardListCommand();
//		Command command = new BoardSelect();
//		command.execute();
	}

}
