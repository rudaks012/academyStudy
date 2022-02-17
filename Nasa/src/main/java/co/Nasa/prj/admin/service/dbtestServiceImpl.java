package co.Nasa.prj.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dbtestDao")
public class dbtestServiceImpl implements dbtestService {

	@Autowired
	private dbtestMapper map;
	
	@Override
	public List<dbtestVO> testSelect() {
		return map.testSelect();
	}

}
