package co.Nasa.prj.seller.controller;

import java.io.File;
import java.io.IOException;

import javax.mail.internet.MimeMessage;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.Nasa.prj.comm.VO.SellerVO;
import co.Nasa.prj.seller.service.SellerService;

@Controller
public class SellerController {

	@Autowired
	SellerService sellerDAO;

	@RequestMapping("/goSellerMypage.do")
	public String goSellerMypage() {
		return "seller/sellerMypage";
	}

	@RequestMapping("/sellerReview.do")
	public String sellerReview() {
		return "seller/sellerReview";
	}

	@RequestMapping("/sellerPromotion.do")
	public String sellerPromotion() {
		return "seller/sellerPromotion";
	}

	@RequestMapping("/promotionInsert.do")
	public String promotionInsert() {
		return "seller/promotionInsert";
	}

	@RequestMapping("/sellerSales.do")
	public String sellerSales() {
		return "seller/sellerSales";
	}

	// 판매자 회원가입 유형 선택
	@RequestMapping("/sellerJoin.do")
	public String buyerJoin() {
		return "seller/sellerJoin";
	}

	// 개인 판매자 회원가입
	@RequestMapping("/sellerPersonjoin.do")
	public String sellerPersonjoin() {
		return "seller/sellerPersonjoin";
	}

	// 기업 판매자 회원가입
	@RequestMapping("/sellerCompanyjoin.do")
	public String sellerCompanyjoin() {
		return "seller/sellerCompanyjoin";
	}

	@RequestMapping("/sellerPayment.do")
	public String sellerPayment() {
		return "seller/sellerPayment";
	}

	@RequestMapping("/serviceInsert.do")
	public String serviceInsert() {
		return "seller/serviceInsert";
	}

	@RequestMapping("/serviceDetail.do")
	public String serviceDetail() {
		return "seller/serviceDetail";

	}

	@RequestMapping("/knowhowInsertForm.do")
	public String knowhowInsertForm() {
		return "seller/knowhowInsert";
	}

//	@RequestMapping("/knowhowInsert.do")
//	public String knowhowInsert() {
//
//		return "seller/knowhowInsert";
//	}

	@RequestMapping("/sellerDetail.do")
	public String sellerDetail() {
		return "seller/sellerDetail";
	}

	@RequestMapping("/sellerUpdate.do")
	public String sellerUpdate() {
		return "seller/sellerUpdate";
	}

	@RequestMapping("/sellerCalendar.do")
	public String sellerCalendar() {
		return "seller/sellerCalendar";
	}

	// 개인 판매자 닉네임 중복 체크
	@RequestMapping("/ajaxSPnickCheck.do")
	@ResponseBody
	public String ajaxSPnickCheck(@Param("s_nickname") String s_nickname, SellerVO vo) {
		vo.setS_nickname(s_nickname);
		int n = sellerDAO.SellerNicknameCheck(vo);
		String result;
		if (n == 0) {
			result = "T";
		} else {
			result = "F";
		}
		System.out.println(vo.getS_nickname());
		return result;
	}

	// 개인 판매자 이메일 중복 체크
	@RequestMapping("/ajaxSPemailCheck.do")
	@ResponseBody
	public String ajaxSPemailCheck(@Param("s_email") String s_email, SellerVO vo) {
		vo.setS_email(s_email);
		int n = sellerDAO.SellerEmailCheck(vo);
		String result;
		if (n == 0) {
			result = "T";
		} else {
			result = "F";
		}
		System.out.println("확인" + vo.getS_email());
		return result;
	}

	// 개인 판매자 이메일 인증
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/ajaxSPemailSend.do")
	@ResponseBody
	public String ajaxSPemailSend(@Param("s_email") String s_email) throws Exception {
		int serti = (int) ((Math.random() * (99999 - 10000 + 1)) + 10000);
		String from = "admin@nasa.com";
		String to = s_email;
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

	// 개인 판매자 회원 가입
	@RequestMapping("/ajaxSPjoin.do")
	@ResponseBody
	public String ajaxSPjoin(SellerVO vo) {
		vo.setS_rank("별");
		vo.setS_author("개인");
		vo.setS_status("사용자");

		System.out.println(vo.toString());
		int n = sellerDAO.SellerInsert(vo);
		String result = "F";
		if (n != 0) {
			result = "T";
		}
		return result;
	}

	// 개인 판매자 회원 가입 - 추가정보 등록
	@RequestMapping("/ajaxSPjoinUpdate.do")
	@ResponseBody
	public String ajaxSPjoinUpdate(SellerVO vo, MultipartFile s_img) {
		System.out.println("이메일 : " + vo.getS_email());
		System.out.println("확인하기 : " + vo.toString());
		System.out.println(s_img);

		// img upload
		String originalFileName = s_img.getOriginalFilename();
		String saveurl = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\resources\\user\\assets\\img\\profile\\";
		String savepath = saveurl + originalFileName;
		System.out.println(savepath);

		String b_img = "resources/user/assets/img/profile/" + originalFileName;

		vo.setS_img(b_img);
		System.out.println(vo.getS_img());

		try {
			s_img.transferTo(new File(savepath));
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int n = sellerDAO.SellerUpdate(vo);
		String result = "F";
		if (n != 0) {
			result = "T";
		}
		return result;
	}

}