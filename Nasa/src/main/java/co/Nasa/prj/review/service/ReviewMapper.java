package co.Nasa.prj.review.service;

import java.util.HashMap;
import java.util.List;

import co.Nasa.prj.comm.VO.ReviewVO;

public interface ReviewMapper {
	// 구매자 리뷰 리스트 조회
	public List<ReviewVO> buyerSelectReviewList(ReviewVO vo);
	
	// 리뷰 하나 조회
	public ReviewVO selectReview(ReviewVO vo);
	
	// 리뷰 삭제 기능 (구매자가 리뷰페이지에서 자신의 리뷰 삭제 눌렀을 때 그 리뷰 삭제)
	public int deleteReview(ReviewVO vo);
	
	// 리뷰 등록
	public int insertReview(ReviewVO vo);
	
	// 리뷰 업데이트
	public int updateReview(ReviewVO vo);
	
	// 판매자 리뷰 리스트 조회
	public List<ReviewVO> sellerReviewList(String s_email);
	
	public List<ReviewVO> reviewSearch(HashMap<String, String> remap);
}
