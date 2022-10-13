package co.home.prj.comm;

import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;
import co.home.prj.member.serviceImpl.MemberServiceImpl;

public class Login {
	public void run() {
		MemberSerVice memberDao = new MemberServiceImpl();
		MemberVO member;
		boolean b = false;
		do {
			member = new MemberVO();
			System.out.println("로그인 하세요");
			System.out.println("아이디를 입력하세요");
			member.setId(GB.sc.nextLine());
			System.out.println("패스워드를 입력하세요");
			member.setPassword(GB.sc.nextLine());
			member = memberDao.memberSelect(member);
			if (member != null) {
				GB.NAME = member.getName();
				GB.AUTHOR = member.getAuthor();
				b = true;
			} else {
				System.out.println("아이디나 패스워드를 확인하세요");
				GB.sc.nextLine();
			}
		} while (!b);
	}
}
