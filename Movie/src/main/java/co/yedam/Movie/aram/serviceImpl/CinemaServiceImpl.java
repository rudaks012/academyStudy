package co.yedam.Movie.aram.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.aram.service.CinemaMapper;
import co.yedam.Movie.aram.service.CinemaService;
import co.yedam.Movie.comm.CinemaVO;


@Repository("cinemaDao")
public class CinemaServiceImpl implements CinemaService {
	
	@Autowired CinemaMapper map;
	
	@Override
	public List<CinemaVO> cinemaAreaList() {
		return map.cinemaAreaList();
	}

	@Override
	public List<CinemaVO> cinemaSelectList(CinemaVO vo) {
		return map.cinemaSelectList(vo);
	}

}
