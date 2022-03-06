package co.Nasa.prj.review.serviceImpl;

import java.util.HashMap;
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

	@Override
	public int insertReview(ReviewVO vo) {
		return map.insertReview(vo);
	}

	@Override
	public int updateReview(ReviewVO vo) {
		return map.updateReview(vo);
	}

	@Override
	public ReviewVO selectReview(ReviewVO vo) {
		return map.selectReview(vo);
	}

	@Override
	public List<ReviewVO> sellerReviewList(String s_email) {
		return map.sellerReviewList(s_email);
	}

	@Override
	public List<ReviewVO> reviewSearch(HashMap<String, String> remap) {
		return map.reviewSearch(remap);
	}

	
}
