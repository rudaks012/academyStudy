package co.Nasa.prj;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.buyer.service.BuyerService;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.payment.service.PaymentService;
import co.Nasa.prj.powerservice.service.PowerServiceMapper;
import co.Nasa.prj.powerservice.service.PowerServiceService;
import co.Nasa.prj.service.service.ServiceService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private PowerServiceService powerDao;

	@Autowired
	private PaymentService paymentDao;
	
	@Autowired
	private ServiceService serviceDao;

	@RequestMapping("/home.do")
	public String home(Model model) {
		model.addAttribute("powerlist", powerDao.PowerServiceList());
//		model.addAttribute("bestservicelist", serviceDao.BestServiceList());
		return "user/home";
	}

	// 차트 그리기
	@RequestMapping(value = "/ajaxchartData.do")
	@ResponseBody
	public List<PaymentVO> ajaxChartpage(Model model) {
		List<PaymentVO> list = paymentDao.selectListChart();
		return list;
	}

	// 월별 누적판매금액 수수료
	@RequestMapping(value = "/ajaxsalesTable.do")
	@ResponseBody
	public List<Integer> ajaxsalesTable() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 1; i < 13; i++) {
			list.addAll(paymentDao.selectpaymenttable(i));
		}
		return list;
	}

	// 월별 카운트
	@RequestMapping("/ajaxcountService.do")
	@ResponseBody
	public List<Integer> ajaxcountservice() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 1; i < 13; i++) {
			list.addAll(paymentDao.countservice(i));
		}

		return list;
	}

	// 연도별 차트 그리기
	@RequestMapping("/ajaxyearChart.do")
	@ResponseBody
	public List<PaymentVO> ajaxyearChart(Model model) {
		List<PaymentVO> list = paymentDao.selectListYearChart();
		return list;
	}

	// 연도별 누적판매금액, 수수료 계산
	@RequestMapping("/selectYearchart.do")
	@ResponseBody
	public List<Integer> ajaxselectYearchart() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 2020; i < 2024; i++) {
			list.addAll(paymentDao.selectYearchart(i));
		}
		System.out.println("리스트 찍어보자 |||||||||||||||||||||||||||" + list);
		return list;
	}

	// 연도별 카운트 조회
	@RequestMapping("/countYearChart.do")
	@ResponseBody
	public List<Integer> countYearChart() {

		List<Integer> list = new ArrayList<Integer>();
		for (int i = 2020; i < 2024; i++) {
			list.addAll(paymentDao.countYearChart(i));
		}
		System.out.println("카운트찍어보자 |||||||||||||||||||||||" + list);

		return list;
	}
	//채팅 결제
	@RequestMapping("/chatpayment.do")
	@ResponseBody
	public int chatpayment(@RequestBody PaymentVO vo ) {
		System.out.println("vo찍어본다||||||||||||||||||||||||||"+vo);
		int res = paymentDao.insertchatpayment(vo);
		if(res == 1) {
			
		}
		
		return res;
	}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
//   @RequestMapping(value = "/home.do", method = RequestMethod.GET)
//   public String home(Locale locale, Model model) {
//      logger.info("Welcome home! The client locale is {}.", locale);
//      
//      Date date = new Date();
//      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//      
//      String formattedDate = dateFormat.format(date);
//      
//      model.addAttribute("serverTime", formattedDate );
//      
//      return "home";
//   }

}