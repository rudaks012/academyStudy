package co.Nasa.prj.admin.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.admin.service.AdminServiceService;
import co.Nasa.prj.admin.service.Criteria;

@Controller
public class AdminServiceController {
	@Autowired
	AdminServiceService adminServiceDao;
	
	
	@RequestMapping("/manage_service.do")
	public String manage_service(Model model, Criteria cri) {
		model.addAttribute("serviceLists", adminServiceDao.getServiceListWithPaging(cri));
		return "admin/service/manageService";
	}
	@RequestMapping("/manage_powerService.do")
	public String manage_powerService() {
		return "admin/service/managepowerService";
	}
}
