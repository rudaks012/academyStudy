package co.Nasa.prj.promotion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.promotion.service.PromotionService;
import co.Nasa.prj.service.service.ServiceService;

@Controller
public class PromotionController {
	@Autowired
	private PromotionService promotionDao;
	@Autowired
	private ServiceService serviceDao;
	
	@RequestMapping("/sellerPromotion.do")
	public String sellerPromotion() {
		return "seller/sellerPromotion";
	}
	
	@RequestMapping("/promotionInsert.do")
	public String promotionInsert(Model model) {
		model.addAttribute("serviceList",serviceDao.serviceList());
		return "seller/promotionInsert";
	}

}
