package co.yedam.Movie.movieserviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.movieservice.MovieMapper;
import co.yedam.Movie.movieservice.MovieService;
import co.yedam.Movie.movieservice.MovieVO;

@Repository("movieDao")
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieMapper map; 
	
	@Override
	public List<MovieVO> movieSelectList() {
		return map.movieSelectList();
	}

	@Override
	public List<MovieVO> movieSearch() {
		return map.movieSearch();
	}

}
