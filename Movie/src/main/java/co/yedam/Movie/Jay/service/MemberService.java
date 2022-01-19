package co.yedam.Movie.Jay.service;

import co.yedam.Movie.comm.MemberVO;

public interface MemberService {
	MemberVO memeberLogin(MemberVO vo);
	MemberVO memberIdFindChk(MemberVO vo); //아이디 찾기
	MemberVO memberPasswordFindIdNameChk(MemberVO vo); //password 찾기
	
}
