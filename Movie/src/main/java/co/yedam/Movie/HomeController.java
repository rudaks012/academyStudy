package co.yedam.Movie;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.Movie.aram.service.CinemaService;
import co.yedam.Movie.comm.CinemaVO;
import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.comm.dbtestVO;
import co.yedam.Movie.dbtest.service.dbtestService;
import co.yedam.Movie.man.service.MoviePostService;
import co.yedam.Movie.taejoon.service.MovieService;

@Controller
public class HomeController {
	
	@Autowired
	private dbtestService dbtestDao; 
	@Autowired
	private MovieService movieDao;
	@Autowired
	private CinemaService cinemaDao;
	
		
	@RequestMapping("/home.do")
	public String home(Model model) {
		return "home";
	}

	

	@RequestMapping("/adminhome.do")
	public String adminhome() {
		return "admin/adminHome";
	}

	@RequestMapping("/aramhome.do")
	public String aramhome(Model model) {
		List<MovieVO> movies = movieDao.movieSelectList();
		List<CinemaVO> cinema = cinemaDao.cinemaAreaList();
		
		model.addAttribute("movies", movies);
		model.addAttribute("cinema", cinema);
		
		return "aram/aramHome";
	}
	@ResponseBody
	@RequestMapping("/ajaxCinemaName.do")
	public List<CinemaVO> ajaxCinemaName(HttpServletRequest request) {
		CinemaVO vo = new CinemaVO();
		String area = request.getParameter("param");
		vo.setCinArea(area);
		List<CinemaVO> cinema2 = cinemaDao.cinemaSelectList(vo);
		
		return cinema2;
	}
	
	@RequestMapping("/junhome.do")
	public String junhome(Model model) {
		List<MovieVO> movie = movieDao.movieSelectList();
		for (int i = 0; i < movie.size(); i++) {
			String date = movie.get(i).getOpendate();
			if (date.length() > 10) {
				date = date.substring(0, 10);
				movie.get(i).setOpendate(date);
			}
		}
		model.addAttribute("movie", movie);
		
		return "jun/junHome";
	}
	@RequestMapping("/ohhome.do")
	public String ohhome() {
		return "oh/ohHome";
	}
	
	
	@RequestMapping("/ajaxdbtest.do")
	@ResponseBody
	public List<dbtestVO> ajaxdbtest() {
		List<dbtestVO> list = dbtestDao.testSelect();
		return list;
	}
	
	
}
