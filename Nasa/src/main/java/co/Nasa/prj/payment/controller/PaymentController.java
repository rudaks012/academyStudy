package co.Nasa.prj.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.Nasa.prj.payment.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService paymentDao;
	
	
}
