package co.home.prj.member.service;

import java.util.List;

public interface MemberSerVice {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);
}
