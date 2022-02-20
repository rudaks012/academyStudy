package co.Nasa.prj.admin.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReportController {
	@RequestMapping("/report_inquiry.do")
	public String report_inquiry() {
		return"admin/reportInquiry";
	}
	@RequestMapping("/report_wait.do")
	public String report_wait() {
		return"admin/reportWait";
	}
	@RequestMapping("/report_complete.do")
	public String report_complete() {
		return"admin/reportComplete";
	}
	@RequestMapping("/report_refuse.do")
	public String report_refuse() {
		return"admin/reportRefuse";
	}
}
