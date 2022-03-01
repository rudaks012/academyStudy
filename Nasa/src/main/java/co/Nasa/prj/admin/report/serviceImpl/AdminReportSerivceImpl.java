package co.Nasa.prj.admin.report.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.admin.report.service.AdminReportMapper;
import co.Nasa.prj.admin.report.service.AdminReportService;

@Repository("reportDao")
public class AdminReportSerivceImpl implements AdminReportService {

	@Autowired
	AdminReportMapper map;

	@Override
	public int todayReport() {
		// TODO Auto-generated method stub
		return map.todayReport();
	}
}
