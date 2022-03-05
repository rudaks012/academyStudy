package co.Nasa.prj.payment.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PaymentVO;

public interface PaymentMapper {
	// 구매자 개인 구매내역 조회
	public List<PaymentVO> buyerPaymentList(PaymentVO vo);
	
	//차트 목록
	List<PaymentVO> selectListChart();
}
