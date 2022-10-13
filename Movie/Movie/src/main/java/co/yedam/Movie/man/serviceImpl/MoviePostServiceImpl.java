package co.yedam.Movie.man.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.man.service.MoviePostMapper;
import co.yedam.Movie.man.service.MoviePostService;

@Repository("moviePostDao")
public class MoviePostServiceImpl implements MoviePostService {
	@Autowired
	private MoviePostMapper map;

	@Override
	public List<MovieVO> moviePostSelectList() {
		return map.moviePostSelectList();
	}

}
