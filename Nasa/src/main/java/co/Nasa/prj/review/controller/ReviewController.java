package co.Nasa.prj.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.review.service.ReviewMapper;

@Controller
public class ReviewController {
	@Autowired ReviewMapper reviewDao;
	
	@RequestMapping("/deleteReview.do" )
	public void deleteReview(ReviewVO vo) {
		reviewDao.deleteReview(vo);
	}
}
