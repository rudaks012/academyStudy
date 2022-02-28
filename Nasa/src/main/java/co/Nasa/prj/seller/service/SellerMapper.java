package co.Nasa.prj.seller.service;

import java.util.List;

import co.Nasa.prj.comm.VO.SellerVO;

public interface SellerMapper {
	int SellerNicknameCheck(SellerVO vo);
	int SellerEmailCheck(SellerVO vo);

	// seller 전체 조회
	public List<SellerVO> selectSellerList();
}
