package co.Nasa.prj.buyer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyerController {
	@RequestMapping("/go_buyer.do")
	public String go_buyer() {
		return "buyer/buyerHome";
	}
}
