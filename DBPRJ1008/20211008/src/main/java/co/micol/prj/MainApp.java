
package co.micol.prj;
import co.micol.prj.exe.MainMenu;
//
//import java.lang.reflect.Member;
//import java.util.ArrayList;
//
//import co.micol.prj.service.MemberService;
//import co.micol.prj.service.MemberVO;
//import co.micol.prj.serviceImpl.MemberServiceImpl;
//
//import java.util.List;

public class MainApp {

	public static void main(String[] args) {
		MainMenu mainMenu = new MainMenu();
		mainMenu.run();

	}
}

//------------------------------------------------------
//		
//		List(MemberVO) members = new ArrayList<MemberVO>();
//		members = MemberService.selectMemberList();
//		
//		for(MemberVO member : members) {
//			member.toString();
//		}

//		DataSource dao = DataSource.getInstance();	
//		dao.getConnection();	
//		
//		System.out.println("Hello ~~~~~");
// ------------------------------------------
//		MemberService memberService = new MemberServiceImpl();
//
//		List<MemberVO> members = new ArrayList<MemberVO>();
//
//		MemberVO vo = new MemberVO();
//		vo.setId("kim");
//		vo.setPassword("4567");
//		vo.setName("김치국");
//		vo.setTel(null);	//NULL값 두개 없어도  NULL로 들어감
//		vo.setAddress(null);
//		vo.setAuthor("USER");
//		int n = memberService.insertMember(vo);
//		if(n != 0) {
//			System.out.println("잘 입력되었습니다.");
//		}else {
//			System.out.println("입력이 실패 하였습니다.");
//		}
//		
////		vo = memberService.selectMember(vo);
////		vo.toString();
//		System.out.println("======================");
//		members = memberService.selectMemberList();
//
//		for (MemberVO member : members) {
//			member.toString();
//		}
//
//	}