package co.Nasa.prj.admin.service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminServiceController {
	@RequestMapping("/manage_service.do")
	public String manage_service() {
		return "admin/service/manageService";
	}
	@RequestMapping("/manage_powerService.do")
	public String manage_powerService() {
		return "admin/service/managepowerService";
	}
}
