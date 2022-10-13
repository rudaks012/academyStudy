package co.bada.prj.board.service;

import java.util.List;

public interface BoardMapper {		//Mybatis Interface
	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardDelete(BoardVO vo);
	int boardUpdate(BoardVO vo);
}
