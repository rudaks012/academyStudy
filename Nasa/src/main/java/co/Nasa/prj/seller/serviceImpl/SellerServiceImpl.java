package co.Nasa.prj.seller.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.SellerVO;
import co.Nasa.prj.seller.service.SellerMapper;
import co.Nasa.prj.seller.service.SellerService;

@Repository("sellerDAO")
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	SellerMapper map;

	@Override
	public int SellerNicknameCheck(SellerVO vo) {
		return map.SellerNicknameCheck(vo);
	}
	

}
