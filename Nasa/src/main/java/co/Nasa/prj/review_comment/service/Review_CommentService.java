package co.Nasa.prj.review_comment.service;

import java.util.List;

import co.Nasa.prj.comm.VO.Review_CommentVO;

public interface Review_CommentService {
	// 리뷰 댓글 전체 조회
	public List<Review_CommentVO> selectReview_CommentList();
}
