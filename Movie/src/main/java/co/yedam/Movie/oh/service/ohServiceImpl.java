package co.yedam.Movie.oh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.comm.MemberVO;

@Repository("memberDaoh")
public class ohServiceImpl implements ohService {
@Autowired
private ohMapper map;
	
	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.insertMember(vo);
	}

}
