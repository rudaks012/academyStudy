package co.yedam.Movie.Jay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JayController {
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "loginForm";
	}
}
