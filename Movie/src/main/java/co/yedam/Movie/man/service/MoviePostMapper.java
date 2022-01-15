package co.yedam.Movie.man.service;

import java.util.List;

import co.yedam.Movie.comm.MovieVO;


public interface MoviePostMapper {
	List<MovieVO> moviePostSelectList();	//영화 포스트 최근 3개 조회

}
