package co.Nasa.prj.payment.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PaymentVO;

public interface PaymentMapper {
   // 구매자 개인 구매내역 조회
   public List<PaymentVO> buyerPaymentList(PaymentVO vo);
   
   //차트 목록
   List<PaymentVO> selectListChart();
   
   //테이블 목록
   List<Integer> selectpaymenttable(int month);
   
   //차트 누적 판매 수량
   List<Integer> countservice(int count);
   
   
   //연도별 차트 조회
   List<PaymentVO> selectListYearChart();
   
   
   //연도별 누적 판매금액,  수수료
   List<Integer> selectYearchart(int year);
   //연도별 누적 판매 수량
   List<Integer> countYearChart(int count);
   
	//채팅 결제 등록
	int insertchatpayment(PaymentVO vo);
	
	
}
