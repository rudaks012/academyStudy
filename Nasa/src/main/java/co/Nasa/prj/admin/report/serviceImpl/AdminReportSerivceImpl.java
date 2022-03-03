package co.Nasa.prj.admin.report.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.admin.report.service.AdminReportMapper;
import co.Nasa.prj.admin.report.service.AdminReportService;
import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.ReportVO;

@Repository("reportDao")
public class AdminReportSerivceImpl implements AdminReportService {

	@Autowired
	AdminReportMapper map;

	
	@Override
	public int totalReport() {
		// TODO Auto-generated method stub
		return map.totalReport();
	}

	@Override
	public List<ReportVO> getReportListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return map.getReportListWithPaging(cri);
	}

	@Override
	public ReportVO detailedReport(ReportVO vo) {
		// TODO Auto-generated method stub
		return map.detailedReport(vo);
	}

	@Override
	public int totalReportWait() {
		// TODO Auto-generated method stub
		return map.totalReportWait();
	}

	@Override
	public List<ReportVO> getReportWaitListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return map.getReportWaitListWithPaging(cri);
	}



	@Override
	public int updateReportResult(AdminAuthorVO vo) {
		// TODO Auto-generated method stub
		return map.updateReportResult(vo);
	}

	@Override
	public ReportVO detailedReportWait(ReportVO vo) {
		// TODO Auto-generated method stub
		return map.detailedReportWait(vo);
	}

	@Override
	public int updateDeniedReport(ReportVO vo) {
		// TODO Auto-generated method stub
		return map.updateDeniedReport(vo);
	}

	




	
}
