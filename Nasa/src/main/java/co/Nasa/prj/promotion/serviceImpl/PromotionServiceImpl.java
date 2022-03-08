package co.Nasa.prj.promotion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.Nasa.prj.comm.VO.PromotionVO;
import co.Nasa.prj.promotion.service.PromotionMapper;
import co.Nasa.prj.promotion.service.PromotionService;

@Repository("promotionDao")
public class PromotionServiceImpl implements PromotionService {
	@Autowired
	private PromotionMapper map;
	
	@Override
	public int promotionInsert(PromotionVO vo) {
		return map.promotionInsert(vo);
	}

	@Override
	public List<PromotionVO> promotionList() {
		return map.promotionList();
	}

	@Override
	public String endPromotion(String pro_service) {
		return map.endPromotion(pro_service);
	}

}
