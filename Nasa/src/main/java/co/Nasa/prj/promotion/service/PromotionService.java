package co.Nasa.prj.promotion.service;

import java.util.List;

import co.Nasa.prj.comm.VO.PromotionVO;

public interface PromotionService {
	List<PromotionVO> promotionList();
	int promotionInsert(PromotionVO vo);
}
