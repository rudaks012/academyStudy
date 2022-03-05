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

}
