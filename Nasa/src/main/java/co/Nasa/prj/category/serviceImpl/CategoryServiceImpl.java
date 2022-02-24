package co.Nasa.prj.category.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.Nasa.prj.category.service.CategoryMapper;
import co.Nasa.prj.category.service.CategoryService;
import co.Nasa.prj.comm.VO.CategoryVO;

public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryMapper map;

	@Override
	public List<CategoryVO> selectCategoryList() {
		return map.selectCategoryList();
	}

}
