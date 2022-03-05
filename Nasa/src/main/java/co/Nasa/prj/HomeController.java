package co.Nasa.prj;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.buyer.service.BuyerService;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.payment.service.PaymentService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
    private BuyerService BuyerDao;
	
	@Autowired
	private PaymentService paymentDao;
	
	@RequestMapping("/home.do")
	public String home(HttpSession session, Model model) {
		
//		BuyerVO vo = new BuyerVO();
//    	vo.setB_email((String)session.getAttribute("id"));
//    	BuyerDao.selectBuyer(vo);
//    	model.addAttribute("loginMember", BuyerDao.selectBuyer(vo));
		return "user/home";
	}
	
	@RequestMapping(value = "/chartData.do")
	@ResponseBody
	public List<PaymentVO> ajaxChartpage(Model model) {
		List<PaymentVO> list  = paymentDao.selectListChart();
		
		return list;
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
