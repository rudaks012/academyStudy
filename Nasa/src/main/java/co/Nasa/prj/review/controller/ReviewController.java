package co.Nasa.prj.review.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

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

import co.Nasa.prj.buyer.service.BuyerMapper;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.comm.VO.Review_CommentVO;
import co.Nasa.prj.review.service.ReviewMapper;
import co.Nasa.prj.review_comment.service.Review_CommentMapper;
import co.Nasa.prj.service.service.ServiceMapper;

@Controller
public class ReviewController {
	@Autowired ReviewMapper reviewDao;
	@Autowired ServiceMapper serviceDao;
	@Autowired Review_CommentMapper review_commentDao;
	@Autowired BuyerMapper buyerDao;
	
	@RequestMapping("/deleteReview.do" )
	public ResponseEntity<String> deleteReview(ReviewVO vo) {
		int i = reviewDao.deleteReview(vo);
		
		if (i == 1) {
			return new ResponseEntity<String>(HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.FORBIDDEN);
		}
	}
	
	@RequestMapping("/writeReview.do")
	public String writeReview(ReviewVO vo, MultipartFile reviewimg, HttpSession session, 
							  HttpServletResponse response, HttpServletRequest request) {
		BuyerVO buyervo = new BuyerVO();
		buyervo.setB_email((String) session.getAttribute("id"));
		buyervo = buyerDao.selectBuyer(buyervo);
		vo.setRev_id(buyervo.getB_email());
		vo.setRev_name(buyervo.getB_nickname());
		
		// img upload
		String originalFileName = reviewimg.getOriginalFilename();
		String extension = "";
		if(originalFileName.equals("")) {
			vo.setRev_img("");
		} else {
			extension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String saveFileName = UUID.randomUUID() + extension;
			String saveurl = "C:\\nasa\\NASA02\\Nasa\\src\\main\\webapp\\resources\\user\\assets\\img\\review\\";
			String savepath = saveurl + saveFileName;
			
			String rev_img = "resources/user/assets/img/review/" + saveFileName;
			
			vo.setRev_img(rev_img);
			
			try { 
				reviewimg.transferTo(new File(savepath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} // try end
		}
		
		reviewDao.insertReview(vo);
		
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/reviewUpdate.do", produces = "text/plain;charset=UTF-8")
	public String reviewUpdate(ReviewVO vo, MultipartFile revimg,HttpSession session, HttpServletResponse response,
			HttpServletRequest request, String pageinfo) {
		ReviewVO rvvo = new ReviewVO();
		rvvo.setRev_code(vo.getRev_code());
		rvvo = reviewDao.selectReview(rvvo);
		
		// img upload
		String originalFileName = revimg.getOriginalFilename();
		if(originalFileName.equals("")) {
			vo.setRev_img(rvvo.getRev_img());
		} else {
			String saveurl = "C:\\nasa\\NASA02\\Nasa\\src\\main\\webapp\\resources\\user\\assets\\img\\review\\";
			String savepath = saveurl + originalFileName;
			
			String rev_img = "resources/user/assets/img/review/" + originalFileName;
			
			vo.setRev_img(rev_img);
			
			try { 
				revimg.transferTo(new File(savepath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} // try end
		}
		
		reviewDao.updateReview(vo);
		
		if(pageinfo.equals("servicepage")) {
			return "redirect:serviceDetail.do";
		}
		
		return "redirect:buyerReview.do";
	}
	
	@RequestMapping("/sellerReview.do")
	public String sellerReview(Model model, HttpSession session) {
		String s_email = (String)session.getAttribute("id");
		model.addAttribute("serviceList", serviceDao.serviceSelectList(s_email));
		model.addAttribute("reviewList", reviewDao.sellerReviewList(s_email));
//		
//		Review_CommentVO vo2 = new Review_CommentVO();
//		vo2.setRere_sel_id(s_email);
//		model.addAttribute("re_comList", review_commentDao.sellerReviewCommentList(vo2));
		
		return "seller/sellerReview";
	}
	
	
	
	@ResponseBody
	@RequestMapping("/reviewSearch.do")
	public List<ReviewVO> reviewSearch(Model model, @RequestParam("scode") String scode, HttpSession session) {
		HashMap<String, String> remap = new HashMap<String, String>();
		remap.put("s_email", (String)session.getAttribute("id"));
		remap.put("scode", scode);
		
		return reviewDao.reviewSearch(remap); 
	}
}
