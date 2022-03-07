package co.Nasa.prj.payment.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.PaymentVO;
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
      // TODO Auto-generated method stub
      return map.selectListChart();
   }

   @Override
   public List<Integer> selectpaymenttable(int month) {
      // TODO Auto-generated method stub
      return map.selectpaymenttable(month);
   }

   @Override
   public List<Integer> countservice(int count) {
      // TODO Auto-generated method stub
      return map.countservice(count);
   }

   @Override
   public List<PaymentVO> selectListYearChart() {
      // TODO Auto-generated method stub
      return map.selectListYearChart();
   }

   @Override
   public List<Integer> selectYearchart(int year) {
      // TODO Auto-generated method stub
      return map.selectYearchart(year);
   }

   @Override
   public List<Integer> countYearChart(int count) {
      // TODO Auto-generated method stub
      return map.countYearChart(count);
   }

   

	//채팅 결제
	@Override
	public int insertchatpayment(PaymentVO vo) {
		// TODO Auto-generated method stub
		return map.insertchatpayment(vo);
	}



}
