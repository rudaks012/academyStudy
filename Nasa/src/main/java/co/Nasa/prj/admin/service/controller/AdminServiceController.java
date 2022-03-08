package co.Nasa.prj.admin.service.controller;

<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
=======
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
>>>>>>> 828340d27373c5251a46d01d4ffb2667eaac02e5
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.AdminServiceService;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.admin.service.PageDTO;
import co.Nasa.prj.comm.VO.ServiceVO;

import co.Nasa.prj.admin.service.AdminServiceService;
import co.Nasa.prj.admin.service.Criteria;

@Controller
public class AdminServiceController {
<<<<<<< HEAD
	@Autowired
	AdminServiceService adminServiceDao;
=======
	@Autowired AdminServiceService adminServiceDao;
>>>>>>> 828340d27373c5251a46d01d4ffb2667eaac02e5
	
	
	@RequestMapping("/manage_service.do")
	public String manage_service(Model model, Criteria cri) {
		model.addAttribute("serviceLists", adminServiceDao.getServiceListWithPaging(cri));
<<<<<<< HEAD
=======
		model.addAttribute("pageMaker", new PageDTO(cri, adminServiceDao.getTotalService(cri)));
		model.addAttribute("total", adminServiceDao.getTotalService(cri));
>>>>>>> 828340d27373c5251a46d01d4ffb2667eaac02e5
		return "admin/service/manageService";
	}
	
	@ResponseBody
	@PostMapping("/ajaxSelectService.do")
	public Map<String, Object> ajaxSelectService(AdminAuthorVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("serviceInfo",adminServiceDao.detailedService(vo));
		return map;
	}
	@RequestMapping("/manage_powerService.do")
	public String manage_powerService() {
		return "admin/service/managepowerService";
	}
}
