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

import co.Nasa.prj.chatting.controller.ChatSession;
import co.Nasa.prj.login.service.LoginService;
import co.Nasa.prj.login.service.LoginVO;
import co.Nasa.prj.login.service.NaverLoginBO;

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
	public String main(HttpServletResponse response,HttpSession session, @RequestParam("id") String id, @RequestParam("pw") String password, Model model) throws IOException {
		String path = "";
		
		LoginVO vo = new LoginVO();
		vo.setB_email(id);
		vo.setB_password(password);
		
		vo = LoginDao.selectbuyer(vo);
		if(vo != null) {
			session.setAttribute("id", vo.getB_email());
			session.setAttribute("password", vo.getB_password());
			session.setAttribute("status", vo.getToken());
			cSession.addLoginUser(vo.getB_email());
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
