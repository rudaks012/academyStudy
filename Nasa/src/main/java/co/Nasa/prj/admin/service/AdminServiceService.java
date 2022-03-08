package co.Nasa.prj.admin.service;

import java.util.List;

<<<<<<< HEAD
public interface AdminServiceService {

	public List<AdminAuthorVO> getServiceListWithPaging(Criteria cri); //전체서비스목록
=======
import co.Nasa.prj.comm.VO.ServiceVO;

public interface AdminServiceService {

	List<ServiceVO> getServiceListWithPaging(Criteria cri); //서비스 전체목록
	public int getTotalService(Criteria cri); 
	public AdminAuthorVO detailedService(AdminAuthorVO vo); //서비스 선택
>>>>>>> 828340d27373c5251a46d01d4ffb2667eaac02e5
}
