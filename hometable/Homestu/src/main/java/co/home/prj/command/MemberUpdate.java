package co.home.prj.command;

import java.util.Scanner;

import co.home.prj.comm.Command;
import co.home.prj.comm.GB;
import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;
import co.home.prj.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {
	MemberSerVice dao = new MemberServiceImpl();
	MemberVO vo = new MemberVO();
	private Scanner scn = new Scanner(System.in);

	@Override
	public void execute() {
		if (GB.AUTHOR.equals("ADMIN")) {
//		MemberService dao = new MemberServiceImpl();
			System.out.println("수정할 아이디를 입력하세요");
			vo.setId(scn.nextLine());
			System.out.println("수정할 이름");
			vo.setName(scn.nextLine());
			System.out.println("변경할 비밀번호");
			vo.setPassword(scn.nextLine());
			System.out.println("변경할 전화번호");
			vo.setTel(scn.nextLine());
			System.out.println("변경할 주소");
			vo.setAddress(scn.nextLine());
			System.out.println("변경할 등급 admin & user");
			vo.setAuthor(scn.nextLine());

			// TODO Auto-generated method stub
		} else {
			vo.setId(vo.getId());
			System.out.println("수정할 이름");
			vo.setName(scn.nextLine());
			System.out.println("변경할 비밀번호");
			vo.setPassword(scn.nextLine());
			System.out.println("변경할 전화번호");
			vo.setTel(scn.nextLine());
			System.out.println("변경할 주소");
			vo.setAddress(scn.nextLine());
			vo.setAuthor("USER");

		}
		int n = dao.memberUpdate(vo);
		if (n != 0) {
			System.out.println("정상적으로 입력");
		} else {
			System.out.println("실패 하였습니다.");
		}
//		if(!vo.getName().equals(dao.)) {

	}
}
