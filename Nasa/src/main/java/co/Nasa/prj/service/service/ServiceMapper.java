package co.Nasa.prj.service.service;

import java.util.List;

import co.Nasa.prj.comm.VO.ServiceVO;

public interface ServiceMapper {
	List<ServiceVO> serviceList();
	int serviceInsert(ServiceVO vo);
	ServiceVO serviceSelect(String ser_code);
	int serviceUpdate(ServiceVO vo);

	List<ServiceVO> searchListAll();

	List<ServiceVO> serviceSelectList(String s_email);
	
	List<ServiceVO> serviceMaxEnddateList(String s_email);
	int endService(ServiceVO vo);
	
	List<ServiceVO> homeCategorySelect(String ser_cate);
}
