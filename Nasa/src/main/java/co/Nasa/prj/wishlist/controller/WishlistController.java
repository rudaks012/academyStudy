package co.Nasa.prj.wishlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.comm.VO.WishlistVO;
import co.Nasa.prj.wishlist.service.WishlistMapper;

@Controller
public class WishlistController {
	@Autowired WishlistMapper wishlistDao;
	
	@RequestMapping("/wishlistDelete.do")
	public void wishlistDelete(WishlistVO vo) {
		wishlistDao.deleteWishlist(vo);
	}
	
	@RequestMapping("/insertWishlist.do")
	public void insertWishlist(WishlistVO vo) {
		wishlistDao.insertWishlist(vo);
	}
}
