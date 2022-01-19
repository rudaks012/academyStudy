package co.yedam.Movie.Jay.web;


import java.util.HashMap;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import co.yedam.Movie.Jay.service.MemberService;
import co.yedam.Movie.comm.MemberVO;

@Controller
public class JayController {
	
	@Autowired
	private MemberService memberDao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {

		return "loginForm";
	}
	
	@RequestMapping("/ajaxLogin.do")
	@ResponseBody
	public HashMap<String, String> ajaxLogin(Model model,MemberVO vo, HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		vo = memberDao.memeberLogin(vo);
	
		if(vo == null) {
			System.out.println("null");
			map.put("msg", "No");
			return map;
		}else {
			session.setAttribute("id", vo.getMemId());
			session.setAttribute("name", vo.getMemName());
			session.setAttribute("author", vo.getAuthor());
			map.put("msg", "Yes");
			map.put("author", vo.getAuthor());
			map.put("name", vo.getMemName());
			return map;
		}
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "admin/adminHome";
	}
	
	
	@RequestMapping("/ajaxidfindchk.do")
	@ResponseBody
	public String ajaxidfindchk(MemberVO vo) {
		vo = memberDao.memberIdFindChk(vo);
		if(vo == null) {
			System.out.println("null");
			return "No";
		}else {
			return vo.getMemId();
		}
	}
	
	@RequestMapping("/ajaxpasswordfindidnamechk.do")
	@ResponseBody
	public String ajaxpasswordfindidnamechk(MemberVO vo) {
		System.out.println(vo.getMemId());
		System.out.println(vo.getMemName());
		vo = memberDao.memberPasswordFindIdNameChk(vo);
		if( vo== null) {
			System.out.println("null");
			return "No";
		}else {
			return "Yes";
		}
	}
	
	@RequestMapping("/ajaxemailconfirm.do")
	@ResponseBody
	public String ajaxemailconfirm(int randomnum, String email, String name) throws MessagingException {
		System.out.println(randomnum+"  "+ email+"  "+ name);
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		messageHelper.setFrom("yedammovie@gmail.com");
		messageHelper.setTo(email);
		String subjectval = "안녕하세요 Yedam 입니다. "+ name + "님 요청하신 인증 번호 입니다.";
		String textval = "3분 이내로 인증번호(6자리)를 입력해 주세요.\n 인증번호는 || "+ randomnum+" || 입니다.";
		messageHelper.setSubject(subjectval);
		messageHelper.setText(textval);
		mailSender.send(message);
		return "Yes";
	}


}
