package co.Nasa.prj.admin.member.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.SellerVO;

public interface AdminMemberService {
	public List<BuyerVO> buyerList();
	public AdminAuthorVO selectBuyer(AdminAuthorVO vo); //구매자 상세조회
	
	public List<SellerVO> sellerList();
}
