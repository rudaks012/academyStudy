package co.yedam.Movie.Jay.service;

import co.yedam.Movie.comm.MemberVO;

public interface MemberMapper {
	MemberVO memeberLogin(MemberVO vo);
	MemberVO memberIdFindChk(MemberVO vo); //아이디 찾기
	MemberVO memberPasswordFindIdChk(MemberVO vo); //password 찾기
}
