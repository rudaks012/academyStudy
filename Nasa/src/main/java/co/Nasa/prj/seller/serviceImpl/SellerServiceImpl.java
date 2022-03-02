package co.Nasa.prj.seller.serviceImpl;

import java.util.List;

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
	

	@Override
	public int SellerEmailCheck(SellerVO vo) {
		return map.SellerEmailCheck(vo);
	}

	@Override
	public List<SellerVO> selectSellerList() {
		return map.selectSellerList();
	}


	@Override
	public int SellerInsert(SellerVO vo) {
		return map.SellerInsert(vo);
	}

}
