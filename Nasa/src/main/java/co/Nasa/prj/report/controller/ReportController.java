package co.Nasa.prj.report.controller;

import java.io.File;
import java.io.IOException;

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
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping(value = "/reportChatting.do",produces = "text/plain;charset=UTF-8")
	public String reportChatting(HttpSession session,
			MultipartFile imgupload, HttpServletRequest req
			) {
		System.out.println("check");
		System.out.println("remember" + req.getParameter("re_member"));
		System.out.println("report type : |||||" + req.getParameter("reportType"));
		System.out.println("re_subject : |||||" + req.getParameter("re_subject"));
		
		
		int n = 0 ;
		String result = "";
		ReportVO vo = new ReportVO();
		vo.setRe_reporter((String) session.getAttribute("id"));
		System.out.println("vo값 찍어보기||||||||||||||||||||||||||||||||||||||||||||||||||||||"
				+ "" + vo.getRe_reporter());
		vo.setRe_type(req.getParameter("reportType"));
		vo.setRe_res(req.getParameter("re_member"));
		vo.setRe_subject(req.getParameter("re_subject"));

		String originaFileName = imgupload.getOriginalFilename();
		if(originaFileName.equals("")) {

		}else {
			String saveurl ="C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\resources\\chat\\report\\";
			String savepath =saveurl +originaFileName;
			System.out.println(savepath);

			String r_img = "resources/chat/report/" + originaFileName;
			vo.setFilecode(r_img);
			System.out.println("파일코드 입력" + vo.getFilecode());
			
			try {
				imgupload.transferTo(new File(savepath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		n = userReportDao.insertChattingReport(vo);
		
		if(n>0) {
			result = "OK";
		}else {
			result = "NO";
		}
		return result;
 	}
}
