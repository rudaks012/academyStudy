package co.Nasa.prj.buyer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import co.Nasa.prj.buyer.service.BuyerMapper;
import co.Nasa.prj.category.service.CategoryMapper;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.CategoryVO;
import co.Nasa.prj.comm.VO.CouponVO;
import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.comm.VO.ReportVO;
import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.comm.VO.Review_CommentVO;
import co.Nasa.prj.comm.VO.SellerVO;
import co.Nasa.prj.comm.VO.WishlistVO;
import co.Nasa.prj.coupon.service.CouponMapper;
import co.Nasa.prj.payment.service.PaymentMapper;
import co.Nasa.prj.report.service.ReportMapper;
import co.Nasa.prj.review.service.ReviewMapper;
import co.Nasa.prj.review_comment.service.Review_CommentMapper;
import co.Nasa.prj.seller.service.SellerMapper;
import co.Nasa.prj.sub_category.service.Sub_CategoryMapper;
import co.Nasa.prj.wishlist.service.WishlistMapper;

@Controller
public class BuyerController {
	@Autowired BuyerMapper buyerDao;
	@Autowired CategoryMapper categoryDao;
	@Autowired Sub_CategoryMapper sub_categoryDao;
	@Autowired ReportMapper reportDao;
	@Autowired PaymentMapper paymentDao;
	@Autowired CouponMapper couponDao;
	@Autowired ReviewMapper reviewDao;
	@Autowired Review_CommentMapper review_commentDao;
	@Autowired WishlistMapper wishlistDao;
	@Autowired SellerMapper sellerDao;
	
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
	public String wishlist(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		WishlistVO wishlistvo = new WishlistVO();
		wishlistvo.setB_id((String)session.getAttribute("id"));
		List<WishlistVO> wishlistList = wishlistDao.selectBuyerWishlist(wishlistvo);
		model.addAttribute("wishlistList",wishlistList);
		
		List<SellerVO> sellerList = sellerDao.selectSellerList();
		model.addAttribute("sellerList", sellerList);
		
		return "buyer/wishlist";
	}
	
	// 구매자 정보 수정 페이지로 이동
	@RequestMapping("/buyerUpdate.do")
	public String buyerUpdate(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String)session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		model.addAttribute("buyerinfo", buyervo);
		
		List<CategoryVO> categoryList = categoryDao.selectCategoryList();
		System.out.println(categoryList);
		model.addAttribute("categoryList", categoryList);
		
		
		return "buyer/buyerUpdate";
	}
	
	@RequestMapping("/profileUpdate.do")
	public String profileUpdate(BuyerVO vo, HttpServletRequest request) {
		//System.out.println(mf.getOriginalFilename());
//		String originalFileName = imgfile.getOriginalFilename();
//		String saveurl = "C:\\prjnasa\\NASA02\\Nasa\\src\\main\\webapp\\resources\\user\\assets\\img\\profile\\";
//		String savepath = saveurl + originalFileName;
//		System.out.println("savepath : " + savepath);
//		
//		String saveFile = "resources\\user\\assets\\img\\profile\\" + originalFileName;
//		vo.setB_img(saveFile);
		
		System.out.println("update");
		buyerDao.updateBuyer(vo);
		
		return "buyer/buyerMypage";
	}
	

	// 구매자 회원가입
	@RequestMapping("/buyerJoin.do")
	public String buyerJoin() {
		return "buyer/buyerJoin";
	}


	// 리뷰 페이지로 이동
	@RequestMapping("/buyerReview.do")
	public String buyerReview(Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		/*
		 * BuyerVO buyervo = new BuyerVO();
		 * buyervo.setB_email((String)session.getAttribute("id")); buyervo =
		 * buyerDao.selectBuyer(buyervo); model.addAttribute("buyerinfo", buyervo);
		 */
		
		ReviewVO reviewvo = new ReviewVO();
		reviewvo.setRev_id((String)session.getAttribute("id"));
		List<ReviewVO> reviewList = reviewDao.buyerSelectReviewList(reviewvo);
		model.addAttribute("reviewList", reviewList);
		
		List<Review_CommentVO> rclist = review_commentDao.selectReview_CommentList();
		model.addAttribute("rclist", rclist);
		
		return "buyer/buyerReview";
	}
	
	// 구매자 일정관리
	@RequestMapping("/buyerCalendar.do")
	public String buyerCalendar() {
		return "buyer/buyerCalendar";
	}



}
