package co.Nasa.prj.powerservice.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PowerServiceVO;

public interface PowerServiceService {
	List<PowerServiceVO> PowerServiceList();
	String endPower(String ser_code);
	int powerserviceInsert(PowerServiceVO vo);
	int powerServiceCount(String power_start);
	PowerServiceVO powerServiceOverlap(PowerServiceVO vo);
}
