package co.Nasa.prj.review_comment.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.Review_CommentVO;

@Repository("review_commentDao")
public interface Review_CommentMapper {
	// 리뷰 댓글 전체 조회
	public List<Review_CommentVO> selectReview_CommentList();
	
	// 특정 review_comment 조회
	public Review_CommentVO selectReview_comment(Review_CommentVO vo);
}
