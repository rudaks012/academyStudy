package co.Nasa.prj.sub_category.service;

import java.util.List;

import co.Nasa.prj.comm.VO.SubCategoryVO;

public interface Sub_CategoryService {
	// sub_category 전체 리스트 가져오기
	List<SubCategoryVO> sub_categoryList();
}
