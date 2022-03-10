package co.Nasa.prj.admin.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.admin.board.service.AdminBoardService;
import co.Nasa.prj.admin.service.Criteria;

@Controller
public class AdminBoardController {
	
	@Autowired
	AdminBoardService adminBoardDao;
	
	
	@GetMapping("/manage_sellerBoard.do")
	public String manage_sellerBoard(Model model, Criteria cri) {
		model.addAttribute("boardLists", adminBoardDao.getSelelrBoardWithPaging(cri));
		return "admin/board/mangeSellerBoard";
	}
}
//	@RequestMapping("/manage_notice.do")
//	public String manage_notice() {
//		return "admin/notice/manageNotice";
//	}
	
//	
//	@RequestMapping("/InsertNoticeForm.do")
//	public String InsertNoticeForm() {
//		return "admin/notice/InsertNoticeForm";
//	}
//	
//	
//	@RequestMapping("/ModifyNoticeForm.do")
//	public String ModifyNoticeForm() {
//		return "admin/notice/modifyNoticeForm";
//	}
//}
