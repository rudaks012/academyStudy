package co.Nasa.prj.buyer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.buyer.service.BuyerMapper;
import co.Nasa.prj.category.service.CategoryMapper;
import co.Nasa.prj.comm.VO.CategoryVO;
import co.Nasa.prj.sub_category.service.Sub_CategoryMapper;

@Controller
public class BuyerController {
	@Autowired BuyerMapper buyerDao;
	@Autowired CategoryMapper categoryDao;
	@Autowired Sub_CategoryMapper sub_categoryDao;
	
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
	public String buyerUpdate(Model model) {
		List<CategoryVO> categoryList = categoryDao.selectCategoryList();
		System.out.println(categoryList);
		model.addAttribute("categoryList", categoryList);
		
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
	
	// 구매자 일정관리
	@RequestMapping("/buyerCalendar.do")
	public String buyerCalendar() {
		return "buyer/buyerCalendar";
	}



}
