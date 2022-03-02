package co.Nasa.prj.notice.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.Nasa.prj.comm.VO.NoticeVO;
import co.Nasa.prj.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService NoticeDao;

	
	@RequestMapping("/sellerKnowhow.do")
	public String sellerKnowhow(Model model, HttpSession session) {
//		String no_id = (String)session.getAttribute("id");
		String no_id = "lsj";
		model.addAttribute("knowhows", NoticeDao.knowhowSelectList(no_id));
		return "seller/sellerKnowhow";
	}
	
	@RequestMapping("/knowhowDetail.do")
	public String knowhowDetail(Model model, @RequestParam("no_code") String no_code) {
		System.out.println(no_code);
		model.addAttribute("knowhowDetail",NoticeDao.knowhowSelect(no_code));
		return "seller/knowhowDetail";
	}

	
	@RequestMapping("/knowhowInsert.do")
	public String knowhowInsert(Model model, NoticeVO vo, HttpServletRequest req, HttpServletResponse response, HttpSession session,
			@RequestParam("mainKnow") MultipartFile file)
			throws IOException {

		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		vo.setNo_id("lsj");
		
		String title = new String(req.getParameter("no_title").getBytes("8859_1"), "UTF-8");
		vo.setNo_title(title);
		
		String fileRoot;
		try {
			// 파일이 있을때 탄다.
			if(file.getSize() > 0 && !file.getOriginalFilename().equals("")) {
				
				
				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);
				
				String originalFileName = file.getOriginalFilename();	//오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
				
				File targetFile = new File(fileRoot + savedFileName);	
				try {
					InputStream fileStream = file.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
					vo.setNo_img(savedFileName); //uuid
					vo.setNo_originimg((originalFileName)); //원본
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
				}
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		System.out.println(vo.getNo_title());
		System.out.println(file.getOriginalFilename());
		// 서머노트 코드 원본
		String s = new String(req.getParameter("summernote").getBytes("8859_1"), "UTF-8");
		System.out.println("s라고 저장됨 " + s);
		System.out.println("파일자르는 이름 " + s.indexOf("src=")); // 13번째에서 잘라야함.
		vo.setNo_subject(s);
		if(s.indexOf("src=")!=-1) {
			System.out.println(s);
			s = s.replaceAll("/prj/resources/fileupload", "editor");
			System.out.println(s);
			vo.setNo_subject(s);
		}
		
		int n = NoticeDao.knowhowInsert(vo);
		if(n != 0) {
			out.println("<script language='javascript'>");
			out.println("alert('등록 완료하였습니다.')");
			out.println("</script>");
			
			model.addAttribute("d", s);
			return "seller/sellerKnowhow";
		}else {
			out.println("<script language='javascript'>");
			out.println("alert('등록 실패하였습니다.')");
			out.println("</script>");
		}
		
		return "seller/knowhowInsert";
	}
	
	@ResponseBody
	@RequestMapping("/knowhowDelete.do")
	public boolean knowhowDelete(@RequestParam("no_code") String no_code) {
		System.out.println(no_code);
		int n = NoticeDao.knowhowDelete(no_code);
		boolean b= true;
		if(n != 1) {
			b = false;
		}
		return b;
	}
	
	@RequestMapping("/knowhowUpdateForm.do")
	public String knowhowUpdateForm(Model model, @RequestParam("no_code") String no_code) {
		model.addAttribute("knowhowUpdate", NoticeDao.knowhowSelect(no_code));
		return "seller/knowhowUpdateForm";
	}
}
