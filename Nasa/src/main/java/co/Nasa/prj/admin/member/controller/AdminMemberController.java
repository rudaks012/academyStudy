package co.Nasa.prj.admin.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {

	@RequestMapping("/go_admin.do")
	public String go_admin() {
		return "admin/member/manageBuyer";
	}
	@RequestMapping("/manage_seller.do")
	public String manage_seller() {
		return "admin/member/manageSeller";
	}
}
