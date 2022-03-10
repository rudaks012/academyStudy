package co.Nasa.prj.payment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.comm.VO.PaymonthVO;
import co.Nasa.prj.payment.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService paymentDao;
	
	@ResponseBody
	@RequestMapping("/sellerSalesData.do")
	public PaymonthVO sellerSalesData(HttpSession session, @RequestParam("scode") String scode, @RequestParam("pay_enddate") String pay_enddate){
		HashMap<String, String> remap = new HashMap<String, String>();
		
		remap.put("scode", scode);
		remap.put("year", pay_enddate);
		remap.put("s_email", (String)session.getAttribute("id"));
		
		return paymentDao.sellerSalesData(remap);
	}
	
	@ResponseBody
	@RequestMapping("/sellerCommData.do")
	public PaymonthVO sellerCommData(HttpSession session, @RequestParam("scode") String scode, @RequestParam("pay_enddate") String pay_enddate){
		HashMap<String, String> remap = new HashMap<String, String>();
		
		remap.put("scode", scode);
		remap.put("year", pay_enddate);
		remap.put("s_email", (String)session.getAttribute("id"));
		
		return paymentDao.sellerCommData(remap);
	}
	
}
