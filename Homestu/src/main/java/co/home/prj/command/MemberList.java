package co.home.prj.command;

import java.util.ArrayList;
import java.util.List;

import co.home.prj.comm.Command;
import co.home.prj.comm.GB;
import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;
import co.home.prj.member.serviceImpl.MemberServiceImpl;

public class MemberList implements Command {

	@Override
	public void execute() {   //멤버 전체 목록
		if(GB.AUTHOR.equals("ADMIN")) {
			MemberSerVice memberDao = new MemberServiceImpl();
			List<MemberVO> members = new ArrayList<MemberVO>();
			members = memberDao.memberSelectList();
			System.out.println("=======================");
			if(members != null) {
				for(MemberVO member : members) {
					member.toListString();
				}
			}else {
				System.out.println("등록된 회원이 없습니다.");
			}
		}else {
			System.out.println("ADMIN 계정으로 접속해야 사용할 수 있습니다.");
		}
		
		System.out.println("========================");
	}

}
