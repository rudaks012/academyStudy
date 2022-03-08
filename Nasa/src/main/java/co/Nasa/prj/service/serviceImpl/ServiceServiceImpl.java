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

	@Override
	public ServiceVO serviceSelect(String ser_code) {
		return map.serviceSelect(ser_code);
	}

	@Override
	public int serviceUpdate(ServiceVO vo) {
		return map.serviceUpdate(vo);
	}

	@Override
	public List<ServiceVO> searchListAll() {
		return map.searchListAll();
	}

	@Override
	public List<ServiceVO> serviceSelectList(String s_email) {
		return map.serviceSelectList(s_email);
	}

	@Override
	public List<ServiceVO> serviceMaxEnddateList(String s_email) {
		return map.serviceMaxEnddateList(s_email);
	}

	@Override
	public int endService(ServiceVO vo) {
		return map.endService(vo);
	}

	@Override
	public List<ServiceVO> homeCategorySelect(String ser_cate) {
		return map.homeCategorySelect(ser_cate);
	}

}
