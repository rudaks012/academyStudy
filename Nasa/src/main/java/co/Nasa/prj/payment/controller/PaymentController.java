package co.Nasa.prj.payment.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.PagingDTO;
import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.comm.VO.PaymonthVO;
import co.Nasa.prj.payment.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private PaymentService paymentDao;
	
	@ResponseBody
	@RequestMapping("/sellerSalesData.do")
	public PaymonthVO sellerSalesData(HttpSession session, @RequestParam("scode") String scode, @RequestParam("pay_enddate") String pay_enddate){
		HashMap<String, String> remap = new HashMap<String, String>();
		
		remap.put("scode", scode);
		remap.put("year", pay_enddate);
		remap.put("s_email", (String)session.getAttribute("id"));
		
		return paymentDao.sellerSalesData(remap);
	}
	
	@ResponseBody
	@RequestMapping("/sellerCommData.do")
	public PaymonthVO sellerCommData(HttpSession session, @RequestParam("scode") String scode, @RequestParam("pay_enddate") String pay_enddate){
		HashMap<String, String> remap = new HashMap<String, String>();
		
		remap.put("scode", scode);
		remap.put("year", pay_enddate);
		remap.put("s_email", (String)session.getAttribute("id"));
		
		return paymentDao.sellerCommData(remap);
	}
	
	@RequestMapping("/sellerPayment.do")
	public String sellerPayment(Model model, HttpSession session, PagingDTO pagingdto) {
		PaymentVO paymentvo = new PaymentVO();
		paymentvo.setS_email((String)session.getAttribute("id"));
		
		
		paymentvo.calcStartEnd(pagingdto.getPageNum(), pagingdto.getAmount());
		List<PaymentVO> paymentList = paymentDao.sellerPaymentList(paymentvo);
		pagingdto.setTotal(paymentDao.countPagingSellerPayment(paymentvo));
		model.addAttribute("paging", new PagingDTO(pagingdto.getTotal(), pagingdto.getPageNum()));
//		model.addAttribute("paymentList", paymentList);
		model.addAttribute("address", "sellerPayment.do");
		
		
		
		model.addAttribute("sellerPayList",paymentList);
		return "seller/sellerPayment";
	}
	
	@RequestMapping("/sellerPaymentN.do")
	public String sellerPaymentN(Model model, HttpSession session, PagingDTO pagingdto) {
		PaymentVO paymentvo = new PaymentVO();
		paymentvo.setS_email((String)session.getAttribute("id"));
		
		
		paymentvo.calcStartEnd(pagingdto.getPageNum(), pagingdto.getAmount());
		List<PaymentVO> paymentList = paymentDao.sellerPaymentListN(paymentvo);
		pagingdto.setTotal(paymentDao.countPagingSellerPaymentN(paymentvo));
		model.addAttribute("paging", new PagingDTO(pagingdto.getTotal(), pagingdto.getPageNum()));
//		model.addAttribute("paymentList", paymentList);
		model.addAttribute("address", "sellerPaymentN.do");
		
		
		
		model.addAttribute("sellerPayList",paymentList);
		return "seller/sellerPaymentN";
	}
	
	@RequestMapping("/sellermonthSearch.do")
	public String monthSearch(Model model, HttpSession session, HttpServletResponse response,
							  HttpServletRequest request, PagingDTO pagingdto) {
		
		PaymentVO paymentvo = new PaymentVO();
		paymentvo.setS_email((String) session.getAttribute("id"));
		//List<PaymentVO> paymentList = paymentDao.buyerPaymentList(paymentvo);
		paymentvo.calcStartEnd(pagingdto.getPageNum(), pagingdto.getAmount());
		List<PaymentVO> paymentList = paymentDao.sellermonthSearch(paymentvo);
		pagingdto.setTotal(paymentDao.countMonthSearch(paymentvo));
		model.addAttribute("paging", new PagingDTO(pagingdto.getTotal(), pagingdto.getPageNum()));
		model.addAttribute("paymentList", paymentList);
		model.addAttribute("address", "sellermonthSearch.do");
		
		
		return "seller/sellerPayment";
	}
	
	@RequestMapping("/sellerajaxcountService.do")
	@ResponseBody
	public List<Integer> ajaxcountservice(HttpSession session, @RequestParam("scode") String scode, @RequestParam("year") String year) {
		List<Integer> list = new ArrayList<Integer>();
		String s_email = (String)session.getAttribute("id");
		for (int i = 1; i < 13; i++) {
			if(i <= 9) {
				HashMap<String, String> hmap = new HashMap<String, String>();
				String str = "0"+ i;
				hmap.put("str", str);
				hmap.put("s_code", scode);
				hmap.put("s_email", s_email);
				hmap.put("year", year);
				list.add(paymentDao.sellercountservice(hmap));
				
			}else {
				HashMap<String, String> hmap = new HashMap<String, String>();
				hmap.put("str", Integer.toString(i));
				hmap.put("s_code", scode);
				hmap.put("s_email", s_email);
				hmap.put("year", year);
				list.add(paymentDao.sellercountservice(hmap));
			}
		}

		return list;
	}
	
	@RequestMapping("/sellerTotalservice.do")
	@ResponseBody
	public PaymonthVO sellerTotalservice(HttpSession session, @RequestParam("scode") String scode, @RequestParam("year") String year) {
		String s_email = (String)session.getAttribute("id");
		
		HashMap<String, String> totalmap = new HashMap<String, String>();
		totalmap.put("s_code", scode);
		totalmap.put("s_email", s_email);
		totalmap.put("year", year);
		PaymonthVO vo = new PaymonthVO();
		vo = paymentDao.sellerTotalservice(totalmap);
			
		return vo;
	}
}
