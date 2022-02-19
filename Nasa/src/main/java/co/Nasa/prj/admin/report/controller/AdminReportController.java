package co.Nasa.prj.admin.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminReportController {
	@RequestMapping("/report_inquiry.do")
	public String report_inquiry() {
		return"admin/reportInquiry";
	}
}
