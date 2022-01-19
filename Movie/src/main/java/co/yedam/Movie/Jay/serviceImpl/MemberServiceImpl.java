package co.yedam.Movie.Jay.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.Jay.service.MemberMapper;
import co.yedam.Movie.Jay.service.MemberService;
import co.yedam.Movie.comm.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper map;
	
	@Override
	public MemberVO memeberLogin(MemberVO vo) {
		
		return map.memeberLogin(vo);
	}


	@Override
	public MemberVO memberIdFindChk(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberIdFindChk(vo);
	}

	@Override
	public MemberVO memberPasswordFindIdNameChk(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberPasswordFindIdNameChk(vo);
	}


	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.memberSelect(vo);
	}


	@Override
	public int formpasswordupdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return map.formpasswordupdate(vo);
	}


	

}
