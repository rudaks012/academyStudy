package co.Nasa.prj.promotion.service;

import java.util.HashMap;
import java.util.List;

import co.Nasa.prj.comm.VO.PromotionVO;

public interface PromotionMapper {
	List<PromotionVO> promotionList(PromotionVO vo);
	int promotionInsert(PromotionVO vo);
	String endPromotion(String pro_service);
	
	List<PromotionVO> promotionCheck(PromotionVO vo);
	
	int promotionCancel(PromotionVO vo);
	int promotionEnd(PromotionVO vo);
	
	int startCheckPromotion();
	int endCheckPromotion();
	
	List<PromotionVO> promotionSelectList(PromotionVO vo);
	int serviceEndPromotion(PromotionVO vo);
	int serviceEndPromotion2(PromotionVO vo);
}
