package co.Nasa.prj.seller.service;

import co.Nasa.prj.comm.VO.SellerVO;

public interface SellerService {
	int SellerNicknameCheck(SellerVO vo);
	int SellerEmailCheck(SellerVO vo);

}
