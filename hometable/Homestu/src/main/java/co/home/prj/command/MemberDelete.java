package co.home.prj.command;

import co.home.prj.comm.Command;
import co.home.prj.comm.GB;
import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;
import co.home.prj.member.serviceImpl.MemberServiceImpl;

public class MemberDelete implements Command {

	@Override
	public void execute() {
		if (GB.AUTHOR.equals("ADMIN")) {
			MemberSerVice dao = new MemberServiceImpl();
			MemberVO vo = new MemberVO();
			System.out.println("삭제할 아이디 입력");
			vo.setId(GB.sc.nextLine());
			int n = dao.memberDelete(vo);
			if (n != 0) {
				System.out.println("삭제 되었습니다.");
			} else {
				System.out.println("실패");
			}
		}
		// TODO Auto-generated method stub

	}

}
