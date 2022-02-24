package co.Nasa.prj.admin.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.admin.member.service.AdminMemberService;
import co.Nasa.prj.admin.service.AdminAuthorVO;

@Controller
public class AdminMemberController {

	@Autowired
	AdminMemberService memberDao;
	
	@RequestMapping("/go_admin.do")
	public String go_admin(Model model) {
		model.addAttribute("buyerList", memberDao.buyerList());
		return "admin/member/manageBuyer";
	}
	
	@ResponseBody
	@PostMapping("/ajaxSelectMember.do")
	public String ajaxSelectMember(AdminAuthorVO vo ,@RequestParam("id") String id) {
		String result="N";
		System.out.println(id);
		vo.setB_email(id);
//		vo = memberDao.selectBuyer(vo);
//		System.out.println(memberDao.selectBuyer(vo));
//		if(vo !=null) {
//			result="Y";
//			return result;
//		}
		return result;
	}
	@RequestMapping("/manage_seller.do")
	public String manage_seller(Model model) {
		model.addAttribute("sellerList", memberDao.sellerList());
		return "admin/member/manageSeller";
	}
}
