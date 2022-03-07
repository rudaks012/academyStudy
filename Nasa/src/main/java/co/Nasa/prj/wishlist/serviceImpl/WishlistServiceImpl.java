package co.Nasa.prj.wishlist.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.Nasa.prj.comm.VO.WishlistVO;
import co.Nasa.prj.wishlist.service.WishlistMapper;
import co.Nasa.prj.wishlist.service.WishlistService;

public class WishlistServiceImpl implements WishlistService {
	@Autowired WishlistMapper map;

	@Override
	public List<WishlistVO> selectBuyerWishlist(WishlistVO vo) {
		return map.selectBuyerWishlist(vo);
	}

	@Override
	public int deleteWishlist(WishlistVO vo) {
		return map.deleteWishlist(vo);
	}

	@Override
	public int countPagingWishlist(WishlistVO vo) {
		return map.countPagingWishlist(vo);
	}

	@Override
	public List<WishlistVO> selectPagingWishlist(WishlistVO vo) {
		return map.selectPagingWishlist(vo);
	}

}
