package co.yedam.Movie.dbtest.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.comm.dbtestVO;

@Repository("dbtestDao")
public class dbtestServiceImpl implements dbtestService {

	@Autowired
	private dbtestMapper map;
	
	@Override
	public List<dbtestVO> testSelect() {
		return map.testSelect();
	}

}
