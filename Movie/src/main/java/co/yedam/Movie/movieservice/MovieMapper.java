package co.yedam.Movie.movieservice;

import java.util.List;

public interface MovieMapper {
	List<MovieVO> movieSelectList(); // 영화 목록 전체 조회
	List<MovieVO> movieSearch(); // 영화 검색(이름으로)	
}
