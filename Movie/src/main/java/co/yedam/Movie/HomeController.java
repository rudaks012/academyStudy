package co.yedam.Movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.comm.dbtestVO;
import co.yedam.Movie.dbtest.service.dbtestService;
import co.yedam.Movie.taejoon.service.MovieService;
import co.yedam.Movie.man.service.MoviePostService;

@Controller
public class HomeController {
	
	@Autowired
	private dbtestService dbtestDao; 
	@Autowired
	private MovieService movieDao;
	@Autowired
	private MoviePostService moviePostDao;
	
		
	@RequestMapping("/home.do")
	public String home(Model model) {
		return "home";
	}

	

	@RequestMapping("/adminhome.do")
	public String adminhome() {
		return "admin/adminHome";
	}
	@RequestMapping("/aramhome.do")
	public String aramhome() {
		return "aram/aramHome";
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
