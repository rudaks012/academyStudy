package co.Nasa.prj.notice.service;

import java.util.List;

import co.Nasa.prj.comm.VO.NoticeVO;

public interface NoticeMapper {
	List<NoticeVO> knowhowSelectList(String no_id);
	NoticeVO knowhowSelect(String no_code);
	int noticeInsert(NoticeVO vo);
	int knowhowInsert(NoticeVO vo);
	int knowhowDelete(String no_code);
}
