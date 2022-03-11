package co.Nasa.prj.service.service;

import java.util.List;

import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.ServiceVO;

public interface ServiceMapper {
	List<ServiceVO> serviceList();
	int serviceInsert(ServiceVO vo);
	ServiceVO serviceSelect(String ser_code);
	int serviceUpdate(ServiceVO vo);
	
	List<ServiceVO> serviceSelectList(String s_email);
	List<ServiceVO> serviceMaxEnddateList(String s_email);
	
	ServiceVO serviceSelectMaxEnd(ServiceVO vo);
	
	int endService(ServiceVO vo);

	int schEndDateCheck();
	
	List<ServiceVO> servicePromotion(String s_email);

	
	List<ServiceVO> homeCategorySelect(String ser_cate);
	List<ServiceVO> homeCategorySelectAll();
	List<ServiceVO> bestServiceList();
	
	// 메인페이지 관심 카테고리 추천 - 구매자 로그인 시
	List<ServiceVO> randomSelectService(String ser_sub_cate);
	// 판매자 혹은 비 로그인 시
	List<ServiceVO> notBuyerRandomService();
}
