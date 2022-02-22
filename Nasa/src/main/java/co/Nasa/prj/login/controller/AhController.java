package co.Nasa.prj.login.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import co.Nasa.prj.chatting.controller.ChatSession;
import co.Nasa.prj.login.service.LoginService;
import co.Nasa.prj.login.service.LoginVO;
import co.Nasa.prj.login.service.NaverLoginBO;
@SessionAttributes({"loginUser","master2","rankPic","Loginvo"})
@Controller
public class AhController {
	   @Autowired
	    private ChatSession cSession;
	   
	@Autowired private LoginService LoginDao;
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@RequestMapping(value = "/join.do")
	public String join(Model model) {
		// dbTest
		model.addAttribute("Hosts", LoginDao.selectListbuyer());
		
		return "user/Login";
	}
	@RequestMapping("/Login.do")
	public String login(Model model, HttpSession session) {
		System.out.println("login페이지접속");
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		System.out.println("네이버" + naverAuthUrl);
		model.addAttribute("url", naverAuthUrl);
		return "user/Login";
	}
	//로그인 체크
	@RequestMapping("/main.do")
	public String main(LoginVO Loginvo,HttpServletResponse response,HttpSession session, @RequestParam("id") String id, @RequestParam("pw") String password, Model model) throws IOException {
		String path = "";
		
		Loginvo.setB_email(id);
		Loginvo.setB_password(password);
//		LoginVO loginUser = LoginDao.loginUser(Loginvo);
		Loginvo = LoginDao.selectbuyer(Loginvo);
		if(Loginvo != null) {
			session.setAttribute("id", Loginvo.getB_email());
			session.setAttribute("password", Loginvo.getB_password());
			session.setAttribute("status", Loginvo.getToken());
			session.setAttribute("nickname", Loginvo.getB_nickname());
			cSession.addLoginUser(Loginvo.getB_email());
			path = "user/home";
		}if(path =="" ) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인 정보를 확인해주세요.');</script>");
			out.flush();
			return "user/Login";
		}else {
			return path;
		}
		
		
				
			
	
	
	};
}
