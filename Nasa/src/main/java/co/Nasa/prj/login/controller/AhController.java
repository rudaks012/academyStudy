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

import co.Nasa.prj.login.service.LoginService;
import co.Nasa.prj.login.service.LoginVO;

@Controller
public class AhController {
	@Autowired
	LoginService LoginDao;
	
	@RequestMapping(value = "/join.do")
	public String join(Model model) {
		// dbTest
		model.addAttribute("Hosts", LoginDao.selectListbuyer());
		
		return "Login";
	}
	@RequestMapping("/Login.do")
	public String login() {
		System.out.println("login1");
		return "Login";
	}
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
			
			path = "buyer/buyerHome";
		}if(path =="" ) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인 정보를 확인해주세요.');</script>");
			out.flush();
			return "Login";
		}else {
			return path;
		}
		
		
				
			
	
	
	};
}
