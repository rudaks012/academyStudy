package co.Nasa.prj.powerservice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.comm.VO.PowerServiceVO;
import co.Nasa.prj.powerservice.service.PowerServiceService;

@Controller
public class PowerServiceController {
	@Autowired
	private PowerServiceService powerDao;
	
	@ResponseBody
	@RequestMapping("/endPower.do")
	public String endPower(@RequestParam("sercode") String ser_code) {
		String enddate = powerDao.endPower(ser_code);
		System.out.println(enddate);
		return enddate;
	}
	
	@RequestMapping("/powerserviceInsert.do")
	public String powerserviceInsert(PowerServiceVO vo, HttpSession session) {
		System.out.println(vo.getSer_code());
		System.out.println(vo.getPower_start());
		System.out.println(vo.getPower_price());
		
		vo.setS_email((String)session.getAttribute("id"));
		
		powerDao.powerserviceInsert(vo);
		return "redirect:sellerService.do";
	}
}
