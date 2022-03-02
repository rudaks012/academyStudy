package co.Nasa.prj.admin.report.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.admin.report.service.AdminReportService;
import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.admin.service.PageDTO;
import co.Nasa.prj.comm.VO.ReportVO;

@Controller
public class AdminReportController {
	@Autowired
	AdminReportService reportDao;
	
	//전체신고
	@RequestMapping("/report_inquiry.do")
	public String report_inquiry(Model model,Criteria cri) {
		model.addAttribute("reportLists", reportDao.getReportListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, reportDao.totalReport()));
		model.addAttribute("total", reportDao.totalReport());
	
		return"admin/report/reportInquiry";
	}
	
	//신고상세조회
	@ResponseBody
	@PostMapping("/ajaxDetailedReport.do")
	public AdminAuthorVO ajaxDetailedReport(AdminAuthorVO vo) {
		
		return reportDao.detailedReport(vo);
	}
	
	
	//신고대기
	@RequestMapping("/report_wait.do")
	public String report_wait(Model model,Criteria cri) {
		model.addAttribute("reportWaitLists", reportDao.getReportWaitListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, reportDao.totalReportWait()));
		model.addAttribute("total",reportDao.totalReportWait() );
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
