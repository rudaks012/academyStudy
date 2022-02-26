package co.Nasa.prj.review.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.review.service.ReviewMapper;
import co.Nasa.prj.review.service.ReviewService;

public class ReviewServiceImpl implements ReviewService {
	@Autowired ReviewMapper map;

	@Override
	public List<ReviewVO> buyerSelectReviewList(ReviewVO vo) {
		return map.buyerSelectReviewList(vo);
	}

	@Override
	public int deleteReview(ReviewVO vo) {
		return map.deleteReview(vo);
	}

}
