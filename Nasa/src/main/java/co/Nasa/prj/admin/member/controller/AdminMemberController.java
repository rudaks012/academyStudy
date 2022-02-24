package co.Nasa.prj.admin.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.admin.member.service.AdminMemberService;

@Controller
public class AdminMemberController {

	@Autowired
	AdminMemberService memberDao;
	
	@RequestMapping("/go_admin.do")
	public String go_admin(Model model) {
		model.addAttribute("buyerList", memberDao.buyerList());
		return "admin/member/manageBuyer";
	}
	@RequestMapping("/manage_seller.do")
	public String manage_seller(Model model) {
		model.addAttribute("sellerList", memberDao.sellerList());
		return "admin/member/manageSeller";
	}
}
