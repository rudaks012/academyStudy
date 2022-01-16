package co.yedam.Movie.man.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.comm.NoticeVO;
import co.yedam.Movie.man.service.MoviePostService;
import co.yedam.Movie.man.service.NoticeService;

@Controller
public class ManController {
	@Autowired
	private MoviePostService moviePostDao;
	@Autowired
	private NoticeService noticeDao;
	
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
				List<NoticeVO> notice = noticeDao.noticeSelectList();
				System.out.println("공지사항");
				model.addAttribute("notice",notice);
		
		return "user/userHome";
	}
//	@RequestMapping("/userhome.do")
//	public String userhome1(Model model) {
//		System.out.println("공지사항확인");
//		
//		
//		return "user/userHome";
//	}
	@RequestMapping("/moviecenter.do")
	public String moviecenter() {
		return "user/MovieCenter";
	}
	

}
