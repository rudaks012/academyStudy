package co.Nasa.prj.admin.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminSalesController {
	@RequestMapping("/sales_category.do")
	public String sales_category() {
		return "admin/sales/salesCategory";
	}
	
	@RequestMapping("/sales_promotion.do")
	public String sales_promotion() {
		return "admin/sales/salesPromotion";
	}
	
	@RequestMapping("/all_sales.do")
	public String all_sales() {
		return "admin/sales/allSales";
	}
}
