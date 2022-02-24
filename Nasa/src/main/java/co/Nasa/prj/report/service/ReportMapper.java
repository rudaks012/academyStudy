package co.Nasa.prj.report.service;

import java.util.List;

import co.Nasa.prj.comm.VO.ReportVO;

public interface ReportMapper {
	// 구매자 신고내역 조회
	List<ReportVO> selectBuyerReportList(ReportVO vo);
}
