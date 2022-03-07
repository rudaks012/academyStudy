package co.Nasa.prj.admin.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.admin.member.service.AdminMemberService;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.admin.service.PageDTO;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.SellerVO;

@Controller
public class AdminMemberController {

	@Autowired
	AdminMemberService memberDao;
	
	static Logger logger = Logger.getLogger("co.Nasa.prj.admin.member.controller");
	
	@RequestMapping("/go_admin.do")
	public String go_admin(Criteria cri,Model model) {

		model.addAttribute("buyerList",memberDao.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, memberDao.getBuyerTotal()));
		model.addAttribute("totalBuyer",memberDao.getBuyerTotal());
		return "admin/member/manageBuyer";
	}
	
	@ResponseBody
	@PostMapping("/ajaxSelectMember.do")
	public Map<String, Object> ajaxSelectMember( AdminAuthorVO vo,Criteria cri) {
		String result="N";
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		vo = memberDao.selectBuyer(vo.getB_email()); //구매자 상세정보
		System.out.println(vo);
		List<AdminAuthorVO> payment= memberDao.selectBuyerPayment(cri); //구매자 결제내역
		PageDTO paging= new PageDTO(cri, memberDao.getSellerTotal());
		map.put("buyer", vo);
		map.put("payment", payment);
		map.put("paging", paging);
		if(vo !=null) {
			map.put("result", result);
		}
		return map;
	}
	
	
	
	//판매자 전체목록
	@RequestMapping("/manage_seller.do")
	public String manage_seller(Model model,Criteria cri) {
		model.addAttribute("sellerList", memberDao.sellerList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, memberDao.getSellerTotal()));
		model.addAttribute("totalSeller", memberDao.getSellerTotal());
		return "admin/member/manageSeller";
	}
	
	@ResponseBody
	@PostMapping("/ajaxSelectSeller.do")
	public Map<String, Object> ajaxSelectSeller(AdminAuthorVO vo,Criteria cri) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		vo = memberDao.selectSeller(vo.getS_email()); //판매자 상세정보
		map.put("seller", vo);
		return map;
	}
	

	
	
	@ResponseBody
	@PostMapping("/ajaxBuyerPayment.do")
	public List<AdminAuthorVO> ajaxBuyerPayment(Criteria cri) {
		return memberDao.selectBuyerPayment(cri);
	}
	
	//구매자 등급 바꾸기
	@ResponseBody
	@PostMapping("/ajaxUpdateBuyerRank.do")
	public int ajaxUpdateBuyerRank(BuyerVO vo) {
		int n=memberDao.updateMemberRank(vo);
		return n;
	}
	
	//판매자 등급 바꾸기
	@ResponseBody
	@PostMapping("/ajaxUpdateSellerRank.do")
	public int ajaxUpdateSellerRank(SellerVO vo) {
		int n=memberDao.updateSellerRank(vo);
		return n;
	}
}
