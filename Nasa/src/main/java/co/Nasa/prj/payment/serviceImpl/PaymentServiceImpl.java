package co.Nasa.prj.payment.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.PaymentVO;
import co.Nasa.prj.comm.VO.PaymonthVO;
import co.Nasa.prj.payment.service.PaymentMapper;
import co.Nasa.prj.payment.service.PaymentService;

@Repository("paymentDao")

public class PaymentServiceImpl implements PaymentService {
   @Autowired
   PaymentMapper map;

   @Override
   public List<PaymentVO> buyerPaymentList(PaymentVO vo) {
      return map.buyerPaymentList(vo);
   }

   @Override
   public List<PaymentVO> selectListChart() {
      return map.selectListChart();
   }

   @Override
   public List<Integer> selectpaymenttable(int month) {
      return map.selectpaymenttable(month);
   }

   @Override
   public List<Integer> countservice(int count) {
      // TODO Auto-generated method stub
      return map.countservice(count);
   }

   @Override
   public List<PaymentVO> selectListYearChart() {
      return map.selectListYearChart();
   }

   @Override
   public List<Integer> selectYearchart(int year) {
      return map.selectYearchart(year);
   }

   @Override
   public List<Integer> countYearChart(int count) {
      return map.countYearChart(count);
   }

   

	//채팅 결제
	@Override
	public int insertchatpayment(PaymentVO vo) {
		return map.insertchatpayment(vo);
	}

	@Override
	public List<PaymentVO> selectPagingBuyerPaymentList(PaymentVO vo) {
		return map.selectPagingBuyerPaymentList(vo);
	}

	@Override
	public int countPagingBuyerPayment(PaymentVO vo) {
		return map.countPagingBuyerPayment(vo);
	}

	@Override
	public List<PaymentVO> monthSearch(PaymentVO vo) {
		return map.monthSearch(vo);
	}

	@Override
	public List<PaymentVO> sixmonthSearch(PaymentVO vo) {
		return map.sixmonthSearch(vo);
	}

	@Override
	public List<PaymentVO> yearSearch(PaymentVO vo) {
		return map.yearSearch(vo);
	}

	@Override
	public List<PaymentVO> selectdateSearch(PaymentVO vo) {
		return map.selectdateSearch(vo);
	}

	@Override
	public PaymonthVO sellerSalesData(HashMap<String, String> remap) {
		return map.sellerSalesData(remap);
	}

	@Override
	public PaymonthVO sellerCommData(HashMap<String, String> remap) {
		return map.sellerCommData(remap);
	}

	

}
