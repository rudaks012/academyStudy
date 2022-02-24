package co.Nasa.prj.admin.member.service;

import java.util.List;

import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.SellerVO;

public interface AdminMemberService {
	public List<BuyerVO> buyerList();
	
	
	public List<SellerVO> sellerList();
}
