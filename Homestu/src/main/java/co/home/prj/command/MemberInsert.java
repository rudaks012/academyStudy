package co.home.prj.command;

import java.util.Scanner;

import co.home.prj.comm.Command;
import co.home.prj.comm.GB;
import co.home.prj.member.service.MemberSerVice;
import co.home.prj.member.service.MemberVO;
import co.home.prj.member.serviceImpl.MemberServiceImpl;

public class MemberInsert implements Command {
	private Scanner scn = new Scanner(System.in);

	@Override
	public void execute() {
		if (GB.AUTHOR.equals("ADMIN")) {

			MemberSerVice dao = new MemberServiceImpl();
			
			MemberVO vo = new MemberVO();
		
			System.out.println("아이디를 입력하세요");
			vo.setId(scn.nextLine());
			System.out.println("이름을 입력하세요");
			vo.setName(scn.nextLine());
			System.out.println("비밀번호을 입력하세요");
			vo.setPassword(scn.nextLine());
			System.out.println("전화번호를 입력하세요");
			vo.setTel(scn.nextLine());
			System.out.println("주소를 입력하세요");
			vo.setAddress(scn.nextLine());
			
			int n = dao.memberInsert(vo);
			if (n != 0) {
				System.out.println("정상적으로 등록되었습니다.");
			} else {
				System.out.println("실패 했습니다.");
			}
		} else {
			System.out.println("멤버 등록 권한이 없습니다.");
		}
	}

}
