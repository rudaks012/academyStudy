package co.Nasa.prj.buyer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyerController {
	// 신고내역 페이지로 이동
	@RequestMapping("/reportHistory.do")
	public String reportHistory() {
		return "buyer/reportHistory";
	}
	
	// 구매내역 페이지로 이동
	@RequestMapping("/buyHistory.do")
	public String buyHistory() {
		return "buyer/buyHistory";
	}
	
}
