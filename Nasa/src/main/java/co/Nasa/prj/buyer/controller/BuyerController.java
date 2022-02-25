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
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.CategoryVO;
import co.Nasa.prj.comm.VO.CouponVO;
import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.comm.VO.ReportVO;
import co.Nasa.prj.coupon.service.CouponMapper;
import co.Nasa.prj.payment.service.PaymentMapper;
import co.Nasa.prj.report.service.ReportMapper;
import co.Nasa.prj.sub_category.service.Sub_CategoryMapper;

@Controller
public class BuyerController {
	@Autowired BuyerMapper buyerDao;
	@Autowired CategoryMapper categoryDao;
	@Autowired Sub_CategoryMapper sub_categoryDao;
	@Autowired ReportMapper reportDao;
	@Autowired PaymentMapper paymentDao;
	@Autowired CouponMapper couponDao;
	
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
	public String reportHistory(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		ReportVO vo = new ReportVO();
		vo.setRe_reporter((String)session.getAttribute("id"));
		List<ReportVO> reportList = reportDao.selectBuyerReportList(vo);
		
		model.addAttribute("reportList", reportList);
		
		return "buyer/reportHistory";
	}
	
	// 구매내역 페이지로 이동
	@RequestMapping("/buyHistory.do")
	public String buyHistory(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String)session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		model.addAttribute("buyerinfo", buyervo);
		
		PaymentVO paymentvo = new PaymentVO();
		paymentvo.setB_email((String)session.getAttribute("id"));
		List<PaymentVO> paymentList = paymentDao.buyerPaymentList(paymentvo);
		model.addAttribute("paymentList", paymentList);
		
		
		return "buyer/buyHistory";
	}
	
	// 보유 쿠폰 페이지로 이동
	@RequestMapping("/buyerCoupons.do")
	public String buyerCoupons(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String)session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		model.addAttribute("buyerinfo", buyervo);
		
		CouponVO couponvo = new CouponVO();
		couponvo.setCou_id(buyervo.getBuyer_coupon());
		model.addAttribute("couponinfo", couponDao.buyerCouponSelect(couponvo));		
		
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
