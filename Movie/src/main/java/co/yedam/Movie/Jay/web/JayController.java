package co.yedam.Movie.Jay.web;


import java.io.File;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.yedam.Movie.Jay.service.AdminMovieService;
import co.yedam.Movie.Jay.service.MemberService;
import co.yedam.Movie.comm.MemberVO;
import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.man.service.NoticeService;
import co.yedam.Movie.taejoon.service.MovieService;

@Controller("movieJayController")
public class JayController {
	
	//수정
	
	
	@Autowired
	private MemberService memDao;
	
	@Autowired
	private JavaMailSender mail;
	
	@Autowired
	private AdminMovieService adminMovieDao;
	
	@Autowired
	String saveDirectory;
	
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
	
	@RequestMapping("/movieList.do")
	public String movieList(Model model) {
		model.addAttribute("movies", adminMovieDao.adminMovieSelectList());
		return "admin/movieList";
	}
	
	@RequestMapping("/movieinputForm.do")
	public String movieinsert() {
		return "admin/movieinputForm";
	}
	
	@RequestMapping("/movieinsert.do")
	public String movieinsert(MovieVO vo, MultipartFile file) {
		
		String fileName = file.getOriginalFilename();
		String pfileName = getRandomString(16);
		pfileName = pfileName + fileName.substring(fileName.lastIndexOf("."));
		File target = new File(saveDirectory, pfileName);
		vo.setFilename(fileName);
		vo.setPfilename(pfileName);
		
		if(! new File(saveDirectory).exists()){
			new File(saveDirectory).mkdir();
		}
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			adminMovieDao.adminMovieInsert(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:movieList.do";
	}
	
	private static String getRandomString(int length){
		  StringBuffer sb = new StringBuffer();
		  Random random = new Random();
		 
		  for (int i=1 ; i<=length ; i++){
			  sb.append((char) ((int) (random.nextInt(26)) + 65));
			  if(i%4==0 && i!=16) {
				  sb.append("-");
			  }
		  }
		  return sb.toString();
		}
	
	@RequestMapping("/adminMovieSelect.do")
	@ResponseBody
	public MovieVO adminMovieSelect(MovieVO vo, Model model) {
		return adminMovieDao.adminMovieSelect(vo);
	}

}
