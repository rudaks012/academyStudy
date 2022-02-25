package co.Nasa.prj.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.ServiceVO;
import co.Nasa.prj.service.service.ServiceMapper;
import co.Nasa.prj.service.service.ServiceService;

@Repository("serviceDao")
public class ServiceServiceImpl implements ServiceService {
	@Autowired
	private ServiceMapper map;
	
	@Override
	public int serviceInsert(ServiceVO vo) {
		return map.serviceInsert(vo);
	}

	@Override
	public List<ServiceVO> serviceList() {
		return map.serviceList();
	}

}
