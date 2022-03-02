package co.Nasa.prj.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.comm.VO.ReportVO;
import co.Nasa.prj.comm.VO.Review_CommentVO;
import co.Nasa.prj.report.service.ReportMapper;

@Controller
public class ReportController {
	@Autowired 
	private ReportMapper userReportDao;
	
	@RequestMapping("/sellerReport.do")
	public String sellerReport(Model model, HttpSession session) {
		ReportVO vo = new ReportVO();
		//vo.setRe_reporter((String)session.getAttribute("id"));
		vo.setRe_reporter("lsj");
		model.addAttribute("reports",userReportDao.selectSellerReportList(vo));
		
		return "seller/sellerReport";
	}
	
	@RequestMapping("/reportReview_comment.do")
	public void reportReview_comment(Review_CommentVO rcvo, ReportVO rpvo, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		rpvo.setRe_reporter((String)session.getAttribute("id"));
		rpvo.setRe_res(rcvo.getRere_sel_id());
		userReportDao.insertBuyerReportsSeller(rpvo);
	}
}
