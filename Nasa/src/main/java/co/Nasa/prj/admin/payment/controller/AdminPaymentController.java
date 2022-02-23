package co.Nasa.prj.admin.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPaymentController {
  
	@RequestMapping("/manage_servicePayment.do")
	public String manage_servicePayment() {
		return "admin/payment/manageServicePayment";
	}
	@RequestMapping("/manage_buyerPayment.do")
	public String manage_buyerPayment() {
		return "admin/payment/manageBuyerPayment";
	}
	@RequestMapping("/manage_sellerPayment.do")
	public String manage_sellerPayment() {
		return "admin/payment/manageSellerPayment";
	}
}
