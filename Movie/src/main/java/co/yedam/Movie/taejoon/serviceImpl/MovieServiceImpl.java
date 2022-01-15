package co.yedam.Movie.taejoon.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.taejoon.service.MovieMapper;
import co.yedam.Movie.taejoon.service.MovieService;

@Repository("movieDao")
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieMapper map;
	
	@Override
	public List<MovieVO> movieSelectList() {
		// TODO Auto-generated method stub
		return map.movieSelectList();
	}

	@Override
	public List<MovieVO> movieSearch() {
		// TODO Auto-generated method stub
		return map.movieSearch();
	}
}
