package co.Nasa.prj.seller.service;

import java.util.List;

import co.Nasa.prj.comm.VO.SellerVO;

public interface SellerService {
	int SellerNicknameCheck(SellerVO vo);
	int SellerInsert(SellerVO vo);

	
	// seller 전체 조회
	public List<SellerVO> selectSellerList();

	int SellerEmailCheck(SellerVO vo);


}
