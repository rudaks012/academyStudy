package co.Nasa.prj.powerservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
