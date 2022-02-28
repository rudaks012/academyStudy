package co.Nasa.prj.notice.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.Nasa.prj.comm.VO.NoticeVO;
import co.Nasa.prj.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService NoticeDao;

	@RequestMapping("/knowhowInsert.do")
	public String knowhowInsert(Model model, NoticeVO vo, HttpServletRequest req, HttpServletResponse response, HttpSession session)
			throws IOException {

		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		vo.setNo_id("lsj");
		
//		if (vo == null) {
//			out.println("<script>alert('값 넘기기 실패'); </script>");
//			out.flush();
//			return "homess";
//		}
//		out.println("<script>alert('값 넘기기 성공'); </script>");
//		out.flush();

		System.out.println(vo.getNo_title());
		System.out.println(vo.getNo_subject());
		// 서머노트 코드 원본
		String s = req.getParameter("summernote");
		System.out.println("s라고 저장됨 " + s);
		System.out.println("파일자르는 이름 " + s.indexOf("src=")); // 13번째에서 잘라야함.
		if (s.indexOf("src=") == 8) {
			// 이미지 파일일 경우 코드 잘라서 쓰기.
			String d = s.substring(0, 13) + "editor/" + s.substring(39);
			System.out.println("d라고 저장됨 " + d);
			vo.setNo_subject(d);
			int n = NoticeDao.knowhowInsert(vo);
			if(n != 0) {
				out.println("<script language='javascript'>");
				out.println("alert('등록 완료하였습니다.')");
				out.println("</script>");

				out.flush();
				model.addAttribute("d", d);
				
				return "seller/sellerKnowhow";
			}
		} else {
			vo.setNo_subject(s);
			int n = NoticeDao.knowhowInsert(vo);
			if(n != 0) {
				out.println("<script language='javascript'>");
				out.println("alert('등록 완료하였습니다.')");
				out.println("</script>");
				
				model.addAttribute("d", s);
				return "seller/sellerKnowhow";
			}
		}
		
		out.println("<script language='javascript'>");
		out.println("alert('등록 실패하였습니다.')");
		out.println("</script>");
		return "seller/knowhowInsert";
	}
}
