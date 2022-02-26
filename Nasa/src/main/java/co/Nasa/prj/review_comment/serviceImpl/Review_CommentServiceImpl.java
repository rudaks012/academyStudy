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

}
