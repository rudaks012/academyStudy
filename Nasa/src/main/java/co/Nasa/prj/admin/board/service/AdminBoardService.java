package co.Nasa.prj.admin.board.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;

public interface AdminBoardService {

	List<AdminAuthorVO> getSelelrBoardWithPaging(Criteria cri);
}
