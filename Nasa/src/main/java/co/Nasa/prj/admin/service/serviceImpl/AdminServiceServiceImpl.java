package co.Nasa.prj.admin.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.AdminServiceMapper;
import co.Nasa.prj.admin.service.AdminServiceService;
import co.Nasa.prj.admin.service.Criteria;

@Repository("adminServiceDao")
public class AdminServiceServiceImpl implements AdminServiceService {

	@Autowired
	AdminServiceMapper map;
	@Override
	public List<AdminAuthorVO> getServiceListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return map.getServiceListWithPaging(cri);
	}

	
}
