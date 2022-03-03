package co.Nasa.prj.review.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.review.service.ReviewMapper;

@Controller
public class ReviewController {
	@Autowired ReviewMapper reviewDao;
	
	@RequestMapping("/deleteReview.do" )
	public ResponseEntity<String> deleteReview(ReviewVO vo) {
		int i = reviewDao.deleteReview(vo);
		
		if (i == 1) {
			return new ResponseEntity<String>(HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(HttpStatus.FORBIDDEN);
		}
	}
	
	@RequestMapping(value = "/reviewUpdate.do", produces = "text/plain;charset=UTF-8")
	public String reviewUpdate(ReviewVO vo, MultipartFile revimg,HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
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
		
		return "redirect:buyerReview.do";
	}
}
