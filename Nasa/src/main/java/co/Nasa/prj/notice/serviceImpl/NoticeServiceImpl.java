package co.Nasa.prj.notice.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.NoticeVO;
import co.Nasa.prj.notice.service.NoticeMapper;
import co.Nasa.prj.notice.service.NoticeService;

@Repository("NoticeDao")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeMapper map;

	@Override
	public int noticeInsert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeInsert(vo);
	}

	@Override
	public int knowhowInsert(NoticeVO vo) {
		return map.knowhowInsert(vo);
	}

}
