package co.Nasa.prj.admin.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminNoticeController {
	
	@RequestMapping("/manage_notice.do")
	public String manage_notice() {
		return "admin/notice/manageNotice";
	}
	
	
	@RequestMapping("/InsertNoticeForm.do")
	public String InsertNoticeForm() {
		return "admin/notice/InsertNoticeForm";
	}
	
	
	@RequestMapping("/ModifyNoticeForm.do")
	public String ModifyNoticeForm() {
		return "admin/notice/modifyNoticeForm";
	}
}
