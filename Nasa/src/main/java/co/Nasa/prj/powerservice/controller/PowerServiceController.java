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
	
	@ResponseBody
	@RequestMapping("/powerServiceCount.do")
	public String powerServiceCount(@RequestParam("power_start") String power_start, @RequestParam("ser_code") String ser_code) {
		int n = powerDao.powerServiceCount(power_start);
		System.out.println(n);
		if(n == 8) {
			return "full";
		}else {
			PowerServiceVO vo = new PowerServiceVO();
			vo.setSer_code(ser_code);
			vo.setPower_start(power_start);
			vo = powerDao.powerServiceOverlap(vo);
			if(vo != null) {
				System.out.println("overlap");
				return "overlap";
			}
		}
		return "T";
	}
}
