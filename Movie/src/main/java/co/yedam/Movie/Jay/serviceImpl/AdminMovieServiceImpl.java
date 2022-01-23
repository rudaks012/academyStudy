package co.yedam.Movie.Jay.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.Jay.service.AdminMovieMapper;
import co.yedam.Movie.Jay.service.AdminMovieService;
import co.yedam.Movie.comm.MovieVO;

@Repository("adminMovieDao")
public class AdminMovieServiceImpl implements AdminMovieService {
	
	@Autowired
	private AdminMovieMapper map;
	
	
	@Override
	public List<MovieVO> adminMovieSelectList() {
		// TODO Auto-generated method stub
		return map.adminMovieSelectList();
	}


	@Override
	public int adminMovieInsert(MovieVO vo) {
		// TODO Auto-generated method stub
		return map.adminMovieInsert(vo);
	}


	@Override
	public MovieVO adminMovieSelect(MovieVO vo) {
		// TODO Auto-generated method stub
		return map.adminMovieSelect(vo);
	}


}
