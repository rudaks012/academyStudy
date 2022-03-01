package co.Nasa.prj.admin.report.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.admin.report.service.AdminReportService;

@Controller
public class AdminReportController {
	@Autowired
	AdminReportService reportDao;
	
	
	@RequestMapping("/report_inquiry.do")
	public String report_inquiry(Model model) {
		model.addAttribute("", model);
		return"admin/report/reportInquiry";
	}
	@RequestMapping("/report_wait.do")
	public String report_wait() {
		return"admin/report/reportWait";
	}
	@RequestMapping("/report_complete.do")
	public String report_complete() {
		return"admin/report/reportComplete";
	}
	@RequestMapping("/report_refuse.do")
	public String report_refuse() {
		return"admin/report/reportRefuse";
	}
}
