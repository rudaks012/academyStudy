package co.Nasa.prj.powerservice.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.PowerServiceVO;
import co.Nasa.prj.powerservice.service.PowerServiceMapper;
import co.Nasa.prj.powerservice.service.PowerServiceService;

@Repository("powerDao")
public class PowerServiceServiceImpl implements PowerServiceService {
	
	@Autowired
	private PowerServiceMapper map;

	@Override
	public List<PowerServiceVO> PowerServiceList() {
		return map.PowerServiceList();
	}

	@Override
	public String endPower(String ser_code) {
		return map.endPower(ser_code);
	}

}
