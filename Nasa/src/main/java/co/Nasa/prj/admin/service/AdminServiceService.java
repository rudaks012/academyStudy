package co.Nasa.prj.admin.service;

import java.util.List;


import co.Nasa.prj.comm.VO.ServiceVO;

public interface AdminServiceService {

	List<AdminAuthorVO> getServiceListWithPaging(Criteria cri); //서비스 전체목록
	public int getTotalService(Criteria cri); 
	public AdminAuthorVO detailedService(AdminAuthorVO vo); //서비스 선택

}
