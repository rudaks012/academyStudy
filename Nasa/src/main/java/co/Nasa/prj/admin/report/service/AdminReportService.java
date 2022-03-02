package co.Nasa.prj.admin.report.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.ReportVO;

public interface AdminReportService {

	//전체조회 reportInquiry.jsp
	public int totalReport(); 
	public List<ReportVO> getReportListWithPaging(Criteria cri);
	public AdminAuthorVO detailedReport(AdminAuthorVO vo); //상세조회
	
	//신고대기조회
	public int totalReportWait();
	public List<ReportVO> getReportWaitListWithPaging(Criteria cri);
	
}
