package co.home.prj.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.home.prj.comm.DataSource;
import co.home.prj.member.service.MemberMapper;
import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;

public class MemberServiceImpl implements MemberSerVice {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	
	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}

}
