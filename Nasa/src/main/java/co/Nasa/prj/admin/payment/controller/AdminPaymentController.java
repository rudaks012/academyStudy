package co.Nasa.prj.admin.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.admin.payment.service.AdminPaymentService;
import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.admin.service.PageDTO;

@Controller
public class AdminPaymentController {
  
	@Autowired
	AdminPaymentService adminPaymentDao;
	
	@RequestMapping("/manage_servicePayment.do")
	public String manage_servicePayment() {
	
		return "admin/payment/manageServicePayment";
	}
	@RequestMapping("/manage_buyerPayment.do")
	public String manage_buyerPayment(Model model, Criteria cri) {
		model.addAttribute("paymentLists",adminPaymentDao.getBuyerPaymentListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, adminPaymentDao.getBuyerPaymentTotal(cri)));
		model.addAttribute("total", adminPaymentDao.getBuyerPaymentTotal(cri));
		return "admin/payment/manageBuyerPayment";
	}
	
	@ResponseBody
	@PostMapping("/ajaxSelectBuyerPayment.do")
	public AdminAuthorVO ajaxSelectService(AdminAuthorVO vo) {
		return adminPaymentDao.detailBuyerPayment(vo.getPay_code());
	}
	@RequestMapping("/manage_sellerPayment.do")
	public String manage_sellerPayment() {
		return "admin/payment/manageSellerPayment";
	}
}
