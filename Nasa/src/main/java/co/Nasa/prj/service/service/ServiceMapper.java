package co.Nasa.prj.service.service;

import java.util.HashMap;
import java.util.List;

import co.Nasa.prj.comm.VO.ServiceVO;

public interface ServiceMapper {
	List<ServiceVO> serviceList();
	int serviceInsert(ServiceVO vo);
	ServiceVO serviceSelect(String ser_code);
	int serviceUpdate(ServiceVO vo);
	int fileDelete(HashMap<String, String> mapp);
}
