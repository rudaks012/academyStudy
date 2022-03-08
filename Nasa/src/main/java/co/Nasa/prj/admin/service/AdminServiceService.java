package co.Nasa.prj.admin.service;

import java.util.List;

public interface AdminServiceService {

	public List<AdminAuthorVO> getServiceListWithPaging(Criteria cri); //전체서비스목록
}
