package co.Nasa.prj.wishlist.service;

import java.util.List;

import co.Nasa.prj.comm.VO.WishlistVO;

public interface WishlistMapper {
	// 구매자 위시리스트 조회
	public List<WishlistVO> selectBuyerWishlist(WishlistVO vo);
	
	// 위시리스트 제거
	public int deleteWishlist(WishlistVO vo);
}
