package co.Nasa.prj.buyer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyerController {
	@RequestMapping("/go_buyer.do")
	public String go_buyer() {
		return "buyer/buyerHome";
	}
	
	@RequestMapping("/go_buyerReportHistory.do")
	public String go_buyerReportHistory() {
		return "buyer/reportHistory";
	}
	
	@RequestMapping("/go_buyHistory.do")
	public String go_buyHistory() {
		return "buyer/buyHistory";
	}
}
