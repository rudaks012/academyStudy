package co.yedam.Movie.man.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.man.service.MoviePostService;

@Controller
public class ManController {
	@Autowired
	private MoviePostService moviePostDao;
	
	@RequestMapping("/userhome.do")
	public String userhome(Model model) {
		System.out.println("homecheck");
		List<MovieVO> movie = moviePostDao.moviePostSelectList();
		System.out.println("postlist");
				for (int i = 0; i < movie.size(); i++) {
					String date = movie.get(i).getOpendate();
					if(date.length() > 10) {
						date = date.substring(0, 10);
						movie.get(i).setOpendate(date);
					}
					model.addAttribute("movie", movie);
					
				}
		
		return "user/userHome";
	}
	@RequestMapping("/moviecenter.do")
	public String moviecenter() {
		return "user/MovieCenter";
	}
	

}
