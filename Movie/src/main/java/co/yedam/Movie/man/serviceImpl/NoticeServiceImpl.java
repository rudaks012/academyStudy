package co.yedam.Movie.man.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.comm.NoticeVO;
import co.yedam.Movie.man.service.NoticeMapper;
import co.yedam.Movie.man.service.NoticeService;

@Repository("noticeDao")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper map;

	@Override
	public List<NoticeVO> noticeSelectList() {
		return map.noticeSelectList();
	}

}
