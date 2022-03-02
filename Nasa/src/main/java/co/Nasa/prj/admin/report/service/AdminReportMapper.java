package co.Nasa.prj.admin.report.service;

import java.util.List;

import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.ReportVO;

public interface AdminReportMapper {

	public int todayReport(); //오늘 신고수
	
	public List<ReportVO> getListWithPaging(Criteria cri);
}
