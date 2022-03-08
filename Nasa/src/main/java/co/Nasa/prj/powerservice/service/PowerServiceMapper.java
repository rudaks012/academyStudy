package co.Nasa.prj.powerservice.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PowerServiceVO;

public interface PowerServiceMapper {
	List<PowerServiceVO> PowerServiceList();
	String endPower(String ser_code);
}
