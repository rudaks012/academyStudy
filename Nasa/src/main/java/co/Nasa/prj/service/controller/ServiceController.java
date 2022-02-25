package co.Nasa.prj.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.category.service.CategoryService;
import co.Nasa.prj.service.service.ServiceService;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService serviceDao;
	
	
	@RequestMapping("/sellerService.do")
	public String sellerService(Model model) {
		model.addAttribute("serviceList", serviceDao.serviceList());
		return "seller/sellerService";
	}
	
	@RequestMapping("/serviceInsert.do")
	public String serviceInsert() {
		return "seller/serviceInsert";
	}

}
