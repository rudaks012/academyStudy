package co.Nasa.prj.admin.member.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.SellerVO;

public interface AdminMemberService {
	public List<BuyerVO> buyerList();
	public AdminAuthorVO selectBuyer(String id); //구매자 정보
	public List<AdminAuthorVO> selectBuyerPayment(String id); //구매자 정보와 결제내역
	
	public List<SellerVO> sellerList();
}
