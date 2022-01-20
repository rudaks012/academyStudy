package co.yedam.Movie.Jay.web;


import java.util.HashMap;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import co.yedam.Movie.Jay.service.MemberService;
import co.yedam.Movie.comm.MemberVO;

@Controller("movieJayController")
public class JayController {
	
	//수정
	
	
	@Autowired
	private MemberService memDao;
	
	@Autowired
	private JavaMailSender mail;
	
	
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {

		return "loginForm";
	}
	
	
	@RequestMapping("/ajaxLogin.do")
	@ResponseBody
	public HashMap<String, String> ajaxLogin(Model model,MemberVO vo, HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		vo = memDao.memeberLogin(vo);
	
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
		vo = memDao.memberIdFindChk(vo);
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
		vo = memDao.memberPasswordFindIdNameChk(vo);
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
		MimeMessage message = mail.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		messageHelper.setFrom("yedammovie@gmail.com");
		messageHelper.setTo(email);
		String subjectval = "안녕하세요 Yedam 입니다. "+ name + "님 요청하신 인증 번호 입니다.";
		String textval = "3분 이내로 인증번호(6자리)를 입력해 주세요.\n 인증번호는 || "+ randomnum+" || 입니다.";
		messageHelper.setSubject(subjectval);
		messageHelper.setText(textval);
		mail.send(message);
		return "Yes";
	}
	
	@RequestMapping("/passwordupdate.do")
	public String passwordupdate(MemberVO vo, Model model) {
		System.out.println("dd");
		System.out.println(vo.getMemId());
		vo = memDao.memberSelect(vo);
		model.addAttribute("id", vo.getMemId());
		model.addAttribute("name", vo.getMemName());
		return "admin/passwordupdate";
		
	}
	
	@RequestMapping("/formpasswordupdate.do")
	public String formpasswordupdate(MemberVO vo) {
		System.out.println(vo.getMemPassword());
		System.out.println(vo.getMemId());
		int n = memDao.formpasswordupdate(vo);
		System.out.println(n);
		return "admin/adminHome";
		
	}
	


}
