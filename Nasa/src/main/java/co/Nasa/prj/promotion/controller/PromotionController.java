package co.Nasa.prj.promotion.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.comm.VO.PromotionVO;
import co.Nasa.prj.promotion.service.PromotionService;
import co.Nasa.prj.service.service.ServiceService;

@Controller
public class PromotionController {
	@Autowired
	private PromotionService promotionDao;
	@Autowired
	private ServiceService serviceDao;
	
	@RequestMapping("/sellerPromotion.do")
	public String sellerPromotion(Model model) {
		model.addAttribute("promotions",promotionDao.promotionList());
		return "seller/sellerPromotion";
	}
	
	@RequestMapping("/promotionInsert.do")
	public String promotionInsert(Model model) {
		model.addAttribute("serviceList",serviceDao.serviceList());
		return "seller/promotionInsert";
	}
	
	@ResponseBody
	@RequestMapping("/promoInsert.do")
	public String promoInsert(HttpSession session, HttpServletRequest request) {
		PromotionVO vo = new PromotionVO();
		String discount = request.getParameter("discount");
		String pro_start = request.getParameter("pro_start");
		String pro_end = request.getParameter("pro_end");
		String pro_service = request.getParameter("pro_service");
		
		vo.setS_email((String)session.getAttribute("id"));
		vo.setProdiscount(discount);
		vo.setPro_start(pro_start);
		vo.setPro_end(pro_end);
		vo.setPro_service(pro_service);
		
		int n = promotionDao.promotionInsert(vo);
		System.out.println(n);
		if(n != 1) {
			return "FAIL";
		}
		return "OK";
	}

}
