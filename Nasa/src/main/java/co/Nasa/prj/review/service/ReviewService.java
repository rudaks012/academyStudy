package co.Nasa.prj.review.service;

import java.util.List;

import co.Nasa.prj.comm.VO.ReviewVO;

public interface ReviewService {
	// 구매자 리뷰 리스트 조회
	public List<ReviewVO> buyerSelectReviewList(ReviewVO vo);
		
	// 리뷰 삭제 기능 (구매자가 리뷰페이지에서 자신의 리뷰 삭제 눌렀을 때 그 리뷰 삭제)
	public int deleteReview(ReviewVO vo);
}
