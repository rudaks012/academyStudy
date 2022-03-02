package co.Nasa.prj.admin.report.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.ReportVO;

public interface AdminReportMapper {

	public int totalReport(); 
	
	public List<ReportVO> getReportListWithPaging(Criteria cri);
	public AdminAuthorVO detailedReport(AdminAuthorVO vo); //상세조회
}
