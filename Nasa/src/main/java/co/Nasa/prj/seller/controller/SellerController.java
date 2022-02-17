package co.Nasa.prj.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerController {
	@RequestMapping("/go_seller.do")
	public String go_seller() {
		return "seller/sellerHome";
	}
}
