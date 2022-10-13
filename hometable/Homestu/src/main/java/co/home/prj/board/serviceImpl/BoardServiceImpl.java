package co.home.prj.board.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.home.prj.board.service.BoardMapper;
import co.home.prj.board.service.BoardService;
import co.home.prj.board.service.BoardVO;
import co.home.prj.comm.DataSource;

public class BoardServiceImpl implements BoardService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	
	@Override
	public List<BoardVO> boardSelectList() {
		// TODO Auto-generated method stub
		return map.boardSelectList();
	}
	@Override
	public BoardVO boardSelect(BoardVO vo) {
		vo =map.boardSelect(vo);
		if(vo != null) {
			map.updateHit(vo.getBId());
		}
		return vo;
	}
	@Override
	public int boardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardInsert(vo);
	}
	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardUpdate(vo);
	}
	@Override
	public int boardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardDelete(vo);
	}
	
	
}
