package co.Nasa.prj.seller.service;

import java.util.List;

import co.Nasa.prj.comm.VO.SellerVO;

public interface SellerService {
	int SellerNicknameCheck(SellerVO vo);
	int SellerEmailCheck(SellerVO vo);
	int SellerInsert(SellerVO vo);
	int SellerUpdate(SellerVO vo);
	
	// seller 전체 조회
	public List<SellerVO> selectSellerList();

	//이메일로 한명 조회
	SellerVO SellerSelect(String s_email);


}
