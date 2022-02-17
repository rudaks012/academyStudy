package co.Nasa.prj.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/go_admin.do")
	public String go_admin() {
		return "admin/adminHome";
	}
}
