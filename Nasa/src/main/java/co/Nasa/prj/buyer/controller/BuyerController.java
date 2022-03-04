package co.Nasa.prj.buyer.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
import co.Nasa.prj.comm.VO.SubCategoryVO;
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
	@Autowired
	BuyerMapper buyerDao;
	@Autowired
	CategoryMapper categoryDao;
	@Autowired
	Sub_CategoryMapper sub_categoryDao;
	@Autowired
	ReportMapper reportDao;
	@Autowired
	PaymentMapper paymentDao;
	@Autowired
	CouponMapper couponDao;
	@Autowired
	ReviewMapper reviewDao;
	@Autowired
	Review_CommentMapper review_commentDao;
	@Autowired
	WishlistMapper wishlistDao;
	@Autowired
	SellerMapper sellerDao;

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

	@RequestMapping("/deleteBuyer.do")
	@ResponseBody
	public String deleteBuyer(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request, @Param("dPassword") String dPassword) {
		// 값 넘어왔는지 체크
		System.out.println(dPassword);

		// 삭제 조건 status
		String deleteStatus = "codeD";

		// vo 선언
		PaymentVO paymentvo = new PaymentVO();
		BuyerVO buyervo = new BuyerVO();

		// vo 에 현재 로그인한 buyer 정보 입력
		paymentvo.setB_email((String) session.getAttribute("id"));
		buyervo.setB_email((String) session.getAttribute("id"));

		// 탈퇴 조건 설정
		List<PaymentVO> paymentDList = paymentDao.buyerPaymentList(paymentvo);
		buyervo = buyerDao.selectBuyer(buyervo);

		// 탈퇴 조건 실행
		// 1. 입력한 비밀번호와 일치하는가?
		if (!buyervo.getB_password().equals(dPassword)) {
			System.out.println(buyervo.getB_password());
			deleteStatus = "codeP";
			return deleteStatus;
		}

		// 2. 현재 거래중인 서비스가 있는가?
		for (int i = 0; i < paymentDList.size(); i++) {
			if (paymentDList.get(i).getPay_enddate() == null) {
				deleteStatus = "codeS";
				return deleteStatus;
			}
		}

		// 어디에도 해당되지 않으면 delete
		buyerDao.deleteBuyer(buyervo);

		return deleteStatus;
	}

	// 신고내역 페이지로 이동
	@RequestMapping("/reportHistory.do")
	public String reportHistory(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		ReportVO vo = new ReportVO();
		vo.setRe_reporter((String) session.getAttribute("id"));
		List<ReportVO> reportList = reportDao.selectBuyerReportList(vo);

		model.addAttribute("reportList", reportList);

		return "buyer/reportHistory";
	}

	// 구매내역 페이지로 이동
	@RequestMapping("/buyHistory.do")
	public String buyHistory(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String) session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		model.addAttribute("buyerinfo", buyervo);

		PaymentVO paymentvo = new PaymentVO();
		paymentvo.setB_email((String) session.getAttribute("id"));
		List<PaymentVO> paymentList = paymentDao.buyerPaymentList(paymentvo);
		model.addAttribute("paymentList", paymentList);
		int paysum = 0;
		int upgrademoney = 0;
		for (int i = 0; i < paymentList.size(); i++) {
			PaymentVO pmvo = paymentList.get(i);
			if(pmvo.getPay_enddate() != null) {
				paysum += pmvo.getPay_price();
			}
		}
		
		switch (buyervo.getB_rank()) {
			case "1":
				upgrademoney = 1000000;
				break;
			case "2":
				upgrademoney = 5000000;
			case "3":
				upgrademoney = 10000000;
			case "4":
				upgrademoney = 20000000;
		}
		
		upgrademoney -= upgrademoney - paysum;
		
		DecimalFormat formatter = new DecimalFormat("###,###");
		String paysumform = formatter.format(paysum);
		String upgrademoneyform = formatter.format(upgrademoney);
		
		model.addAttribute("paysum", paysumform);
		model.addAttribute("upgrademoney",upgrademoneyform);

		return "buyer/buyHistory";
	}

	// 보유 쿠폰 페이지로 이동
	@RequestMapping("/buyerCoupons.do")
	public String buyerCoupons(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String) session.getAttribute("id"));
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
		wishlistvo.setB_id((String) session.getAttribute("id"));
		List<WishlistVO> wishlistList = wishlistDao.selectBuyerWishlist(wishlistvo);
		model.addAttribute("wishlistList", wishlistList);

		List<SellerVO> sellerList = sellerDao.selectSellerList();
		model.addAttribute("sellerList", sellerList);

		return "buyer/wishlist";
	}

	// 구매자 정보 수정 페이지로 이동
	@RequestMapping("/buyerUpdate.do")
	public String buyerUpdate(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String) session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		model.addAttribute("buyerinfo", buyervo);

		List<CategoryVO> categoryList = categoryDao.selectCategoryList();
		System.out.println(categoryList);
		model.addAttribute("categoryList", categoryList);

		List<SubCategoryVO> subcategoryList = sub_categoryDao.sub_categoryList();
		model.addAttribute("subcategoryList", subcategoryList);

		return "buyer/buyerUpdate";
	}

	@RequestMapping(value = "/profileUpdate.do", produces = "text/plain;charset=UTF-8")
	public String profileUpdate(BuyerVO vo, MultipartFile imgupload, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		if(vo.getField_code() == null) {
			BuyerVO bvo = new BuyerVO();
			bvo.setB_email((String) session.getAttribute("id"));
			bvo = buyerDao.selectBuyer(bvo);
			vo.setField_code(bvo.getField_code());
		}
		System.out.println(vo.getField_code());
		
		// img upload
		BuyerVO voforimg = new BuyerVO();
		voforimg.setB_email((String) session.getAttribute("id"));
		voforimg = buyerDao.selectBuyer(voforimg);
		String beforimg = voforimg.getB_img();
		
		String originalFileName = imgupload.getOriginalFilename();
		if(originalFileName.equals("")) {
			vo.setB_img(beforimg);
		} else {
			String saveurl = "C:\\nasa\\NASA02\\Nasa\\src\\main\\webapp\\resources\\user\\assets\\img\\profile\\";
			String savepath = saveurl + originalFileName;
			System.out.println(savepath);
			
			String b_img = "resources/user/assets/img/profile/" + originalFileName;
			
			vo.setB_img(b_img);
			System.out.println(vo.getB_img());
			
			try {
				imgupload.transferTo(new File(savepath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		buyerDao.updateBuyer(vo);

		return "buyer/buyerMypage";
	}

	// 구매자 회원가입
	@RequestMapping("/buyerJoin.do")
	public String buyerJoin() {
		return "buyer/buyerJoin";
	}

	// 구매자 닉네임 중복 체크
	@RequestMapping("/ajaxBnickCheck.do")
	@ResponseBody
	public String ajaxBnickCheck(@Param("b_nickname") String b_nickname, BuyerVO vo) {
		int n = buyerDao.BuyerNicknameCheck(vo);
		String result;
		if (n == 0) {
			result = "T";
		} else {
			result = "F";
		}
		return result;
	}

	// 구매자 이메일 중복 체크
	@RequestMapping("/ajaxBemailCheck.do")
	@ResponseBody
	public String ajaxBemailCheck(@Param("b_email") String b_email, BuyerVO vo) {
		vo.setB_email(b_email);

		int n = buyerDao.BuyerEmailCheck(vo);
		String result;
		if (n == 0) {
			result = "T";
		} else {
			result = "F";
		}
		return result;
	}
	
	// 구매자 이메일 인증
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/ajaxBemailSend.do")
	@ResponseBody
	public String ajaxBemailSend(@Param("b_email") String b_email) throws Exception {
		int serti = (int) ((Math.random() * (99999 - 10000 + 1)) + 10000);
		String from = "admin@nasa.com";
		String to = b_email;
		String title = "NASA 회원가입 인증번호 입니다.";
		String content = "[인증번호] " + serti + " 입니다.";
		String num = "";
		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(title);
			mailHelper.setText(content, true);

			mailSender.send(mail);
			num = Integer.toString(serti);
		} catch (Exception e) {
			num = "error";
		}
		return num;
	}

	// 구매자 회원 가입
	@RequestMapping("/ajaxBjoin.do")
	@ResponseBody
	public String ajaxBjoin(BuyerVO vo) {
		vo.setB_rank("별");
		vo.setB_author("구매자");
		vo.setB_status("사용자");
		vo.setToken("t");
		vo.setField_code("1");

		System.out.println("여기를 확인해보세여" + vo.toString());
		
		int n = buyerDao.BuyerInsert(vo);
		String result = "F";
		if (n != 0) {
			result = "T";
		}
		return result;
	}

	// 리뷰 페이지로 이동
	@RequestMapping("/buyerReview.do")
	public String buyerReview(Model model, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		/*
		 * BuyerVO buyervo = new BuyerVO();
		 * buyervo.setB_email((String)session.getAttribute("id")); buyervo =
		 * buyerDao.selectBuyer(buyervo); model.addAttribute("buyerinfo", buyervo);
		 */

		ReviewVO reviewvo = new ReviewVO();
		reviewvo.setRev_id((String) session.getAttribute("id"));
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
