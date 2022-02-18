package co.Nasa.prj.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerController {
	
	@RequestMapping("/goSellerMypage.do")
	public String goSellerMypage() {
		return "seller/sellerMypage";
	}
	
	@RequestMapping("/sellerKnowhow.do")
	public String sellerKnowhow() {
		return "seller/sellerKnowhow";
	}
	
	@RequestMapping("/sellerService.do")
	public String sellerService() {
		return "seller/sellerService";
	}
	
	@RequestMapping("/sellerReview.do")
	public String sellerReview() {
		return "seller/sellerReview";
	}
}
