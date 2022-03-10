package co.Nasa.prj.promotion.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PromotionVO;

public interface PromotionService {
	List<PromotionVO> promotionList(PromotionVO vo);
	int promotionInsert(PromotionVO vo);
	String endPromotion(String pro_service);
	
	List<PromotionVO> promotionCheck(PromotionVO vo);
}
