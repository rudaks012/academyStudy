package co.Nasa.prj;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.Nasa.prj.buyer.service.BuyerService;
import co.Nasa.prj.comm.VO.BuyerVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
    private BuyerService BuyerDao;
	
	@RequestMapping("/home.do")
	public String home(HttpSession session, Model model) {
		
//		BuyerVO vo = new BuyerVO();
//    	vo.setB_email((String)session.getAttribute("id"));
//    	BuyerDao.selectBuyer(vo);
//    	model.addAttribute("loginMember", BuyerDao.selectBuyer(vo));
		return "user/home";
	}
	

	@RequestMapping("/searchResult.do")
	public String searchResult() {
		return "user/searchResult";
	}
	
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
	
}
