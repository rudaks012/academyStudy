package co.Nasa.prj.admin.payment.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.PaymentVO;

public interface AdminPaymentService {

	//구매자 목록
	List<PaymentVO> getBuyerPaymentListWithPaging(Criteria cri);
	public int getBuyerPaymentTotal(Criteria cri);
	public AdminAuthorVO detailBuyerPayment(String code);
}
