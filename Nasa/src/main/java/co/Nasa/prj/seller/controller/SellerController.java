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
	
	@RequestMapping("/sellerPromotion.do")
	public String sellerPromotion() {
		return "seller/sellerPromotion";
	}
	
	@RequestMapping("/promotionInsert.do")
	public String promotionInsert() {
		return "seller/promotionInsert";
	}
	
	@RequestMapping("/sellerReport.do")
	public String sellerReport() {
		return "seller/sellerReport";
	}
	
	@RequestMapping("/sellerSales.do")
	public String sellerSales() {
		return "seller/sellerSales";
	}
}
