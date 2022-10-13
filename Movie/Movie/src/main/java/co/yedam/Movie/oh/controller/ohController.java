package co.yedam.Movie.oh.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.Movie.comm.MemberVO;
import co.yedam.Movie.oh.service.ohService;

@Controller
public class ohController {
	@Autowired
	private ohService memberDaoh;
	
	@RequestMapping("/joinForm.do")
	public String joinForm() {
		return "joinForm";
	}
	
	@RequestMapping("/joinFrm.do")
	private String joinFrm(MemberVO vo, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		memberDaoh.insertMember(vo);
		out.println("<script>alert('가입성공'); </script>");
		out.flush();
		
		return "joinForm";
	}
}
