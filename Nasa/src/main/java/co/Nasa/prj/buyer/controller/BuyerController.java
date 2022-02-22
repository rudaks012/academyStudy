package co.Nasa.prj.buyer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.velocity.runtime.directive.Parse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.buyer.service.BuyerMapper;
import co.Nasa.prj.comm.VO.BuyerVO;

@Controller
public class BuyerController {
	@Autowired BuyerMapper buyerDao;
	
	// 구매자 마이페이지로 이동
	@RequestMapping("/goBuyerMypage.do")
	public String goBuyerMypage(HttpSession session, HttpServletResponse response, HttpServletRequest request,
								Model model) {
		/*
		 * BuyerVO vo = new BuyerVO();
		 * vo.setB_email((String)session.getAttribute("id")); BuyerVO buyerinfo =
		 * buyerDao.selectBuyer(vo); System.out.println(buyerinfo.getB_email());
		 * model.addAttribute("buyerinfo", buyerinfo);
		 */
		
		return "buyer/buyerMypage";
	}
	
	
	// 신고내역 페이지로 이동
	@RequestMapping("/reportHistory.do")
	public String reportHistory() {
		return "buyer/reportHistory";
	}
	
	// 구매내역 페이지로 이동
	@RequestMapping("/buyHistory.do")
	public String buyHistory() {
		return "buyer/buyHistory";
	}
	
	// 보유 쿠폰 페이지로 이동
	@RequestMapping("/buyerCoupons.do")
	public String buyerCoupons() {
		return "buyer/buyerCoupons";
	}
	
	// 위시 리스트 페이지로 이동
	@RequestMapping("/wishlist.do")
	public String wishlist() {
		return "buyer/wishlist";
	}
	
	// 구매자 정보 수정 페이지로 이동
	@RequestMapping("/buyerUpdate.do")
	public String buyerUpdate() {
		return "buyer/buyerUpdate";
	}
	

	// 구매자 회원가입
	@RequestMapping("/buyerJoin.do")
	public String buyerJoin() {
		return "buyer/buyerJoin";
	}


	// 리뷰 페이지로 이동
	@RequestMapping("/buyerReview.do")
	public String buyerReview() {
		return "buyer/buyerReview";
	}



}
