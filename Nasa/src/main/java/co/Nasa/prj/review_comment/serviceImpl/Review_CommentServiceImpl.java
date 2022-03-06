package co.Nasa.prj.review_comment.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.Nasa.prj.comm.VO.Review_CommentVO;
import co.Nasa.prj.review_comment.service.Review_CommentMapper;
import co.Nasa.prj.review_comment.service.Review_CommentService;

public class Review_CommentServiceImpl implements Review_CommentService {
	@Autowired Review_CommentMapper map;
	
	@Override
	public List<Review_CommentVO> selectReview_CommentList() {
		return map.selectReview_CommentList();
	}

	@Override
	public Review_CommentVO selectReview_comment(Review_CommentVO vo) {
		return map.selectReview_comment(vo);
	}

	@Override
	public List<Review_CommentVO> sellerReviewCommentList(String s_email) {
		return map.sellerReviewCommentList(s_email);
	}

}
