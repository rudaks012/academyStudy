package co.yedam.Movie.aram.service;

import java.util.List;

import co.yedam.Movie.comm.CinemaVO;

public interface CinemaService {
	List<CinemaVO> cinemaAreaList(); // 지역 목록과 지역당 몇 개의 영화관이 있는지 조회
	List<CinemaVO> cinemaSelectList(CinemaVO vo);
}
