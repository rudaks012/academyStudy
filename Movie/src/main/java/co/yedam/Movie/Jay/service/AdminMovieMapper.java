package co.yedam.Movie.Jay.service;

import java.util.List;

import co.yedam.Movie.comm.MovieVO;

public interface AdminMovieMapper {
	List<MovieVO> adminMovieSelectList(); // 영화 목록 전체 조회
	int adminMovieInsert(MovieVO vo);
	MovieVO adminMovieSelect(MovieVO vo); // 영화 한건 찾기 
}
