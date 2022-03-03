package co.Nasa.prj.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.comm.VO.ReportVO;
import co.Nasa.prj.comm.VO.Review_CommentVO;
import co.Nasa.prj.report.service.ReportMapper;
import co.Nasa.prj.review_comment.service.Review_CommentMapper;

@Controller
public class ReportController {
	@Autowired 
	private ReportMapper userReportDao;
	@Autowired
	private Review_CommentMapper review_commentDao;
	
	@RequestMapping("/sellerReport.do")
	public String sellerReport(Model model, HttpSession session) {
		ReportVO vo = new ReportVO();
		//vo.setRe_reporter((String)session.getAttribute("id"));
		vo.setRe_reporter("lsj");
		model.addAttribute("reports",userReportDao.selectSellerReportList(vo));
		
		return "seller/sellerReport";
	}
	
	@RequestMapping("/reportReview_comment.do")
	public ResponseEntity<String> reportReview_comment(Review_CommentVO rcvo, ReportVO rpvo, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		rcvo = review_commentDao.selectReview_comment(rcvo);
		System.out.println(rpvo);
		rpvo.setRe_reporter((String)session.getAttribute("id"));
		rpvo.setRe_res(rcvo.getRere_sel_id());
		int i = userReportDao.insertBuyerReportsSeller(rpvo);
		
		if (i == 1) {
			return new ResponseEntity<String>(HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.FORBIDDEN);
		}
	}
	
	//report 여기까지함
	@ResponseBody
	@RequestMapping("/reportChatting.do")
	public String reportChatting(@RequestParam ("re_member") String re_member, 
			@RequestParam("re_type") String re_type, @RequestParam String re_subject,HttpSession session
			) {
		ReportVO vo = new ReportVO();
		vo.setRe_reporter((String) session.getAttribute("id"));
		vo.setRe_type(re_type);
		vo.setRe_reporter(re_member);
		vo.setRe_subject(re_subject);
		
		return "check";
 	}
}
