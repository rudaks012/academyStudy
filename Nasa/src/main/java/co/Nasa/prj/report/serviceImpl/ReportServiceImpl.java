package co.Nasa.prj.report.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.Nasa.prj.comm.VO.ReportVO;
import co.Nasa.prj.report.service.ReportMapper;
import co.Nasa.prj.report.service.ReportService;

public class ReportServiceImpl implements ReportService {
	@Autowired
	private ReportMapper map;

	@Override
	public List<ReportVO> selectBuyerReportList(ReportVO vo) {
		return map.selectBuyerReportList(vo);
	}

}
