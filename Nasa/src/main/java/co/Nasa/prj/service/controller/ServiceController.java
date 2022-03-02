package co.Nasa.prj.service.controller;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.Nasa.prj.comm.VO.ServiceVO;
import co.Nasa.prj.service.service.ServiceService;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService serviceDao;

	@RequestMapping("/sellerService.do")
	public String sellerService(Model model) {
		model.addAttribute("serviceList", serviceDao.serviceList());
		return "seller/sellerService";
	}

	@ResponseBody
	@RequestMapping("/serviceInsertForm.do")
	public String fileUpload(ServiceVO vo, @RequestParam("file") MultipartFile file, @RequestParam("subfile") MultipartFile subfile, 
			@RequestParam("subfile2") MultipartFile subfile2, @RequestParam("subfile3") MultipartFile subfile3,
			HttpSession session,HttpServletRequest request) throws UnsupportedEncodingException {
		
//		vo.setS_email((String)session.getAttribute("id"));
		vo.setS_email("lsj");
		System.out.println("111");
		System.out.println(file.getOriginalFilename());
		System.out.println(subfile.getOriginalFilename());
		System.out.println(subfile2.getOriginalFilename());
		System.out.println(subfile3.getOriginalFilename());
		System.out.println("222");
		
		String title = new String(request.getParameter("ser_title").getBytes("8859_1"), "UTF-8");
		String cate = new String(request.getParameter("ser_cate").getBytes("8859_1"), "UTF-8");
		String subcate = new String(request.getParameter("ser_sub_cate").getBytes("8859_1"), "UTF-8");
		String skill = new String(request.getParameter("ser_skill").getBytes("8859_1"), "UTF-8");
		String team = new String(request.getParameter("ser_team").getBytes("8859_1"), "UTF-8");
		String lang = new String(request.getParameter("ser_lang").getBytes("8859_1"), "UTF-8");
		String frame = new String(request.getParameter("ser_frame").getBytes("8859_1"), "UTF-8");
		String dbms = new String(request.getParameter("ser_dbms").getBytes("8859_1"), "UTF-8");
		String line = new String(request.getParameter("ser_line").getBytes("8859_1"), "UTF-8");
		String date = new String(request.getParameter("ser_date").getBytes("8859_1"), "UTF-8");
		String start = new String(request.getParameter("ser_start").getBytes("8859_1"), "UTF-8");
		String end = new String(request.getParameter("ser_end").getBytes("8859_1"), "UTF-8");
		String sub = new String(request.getParameter("ser_sub").getBytes("8859_1"), "UTF-8");
		String offer = new String(request.getParameter("ser_offer").getBytes("8859_1"), "UTF-8");
		
		vo.setSer_title(title);
		vo.setSer_cate(cate);
		vo.setSer_sub_cate(subcate);
		vo.setSer_skill(skill);
		vo.setSer_team(team);
		vo.setSer_lang(lang);
		vo.setSer_frame(frame);
		vo.setSer_dbms(dbms);
		vo.setSer_line(line);
		vo.setSer_date(date);
		vo.setSer_start(start);
		vo.setSer_end(end);
		vo.setSer_sub(sub);
		vo.setSer_offer(offer);
		
		String fileRoot;
		String strResult = "{ \"result\":\"FAIL\" }";
		
		//메인
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
					vo.setSer_img(savedFileName); //uuid
					vo.setSer_imgorigin(originalFileName); //원본
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
				}
				
				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		}catch(Exception e){
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL\" }";
		}
		
		
		//서브1
		try {
			// 파일이 있을때 탄다.
			if(subfile.getSize() > 0 && !subfile.getOriginalFilename().equals("")) {
				
				
				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);
				
				String originalFileName = subfile.getOriginalFilename();	//오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
				
				File targetFile = new File(fileRoot + savedFileName);	
				try {
					InputStream fileStream = subfile.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
					vo.setSer_subimg(savedFileName); //uuid
					vo.setSer_originsub(originalFileName); //원본
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
				}
				
				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		}catch(Exception e){
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL\" }";
		}
		
		//서브2
		try {
			// 파일이 있을때 탄다.
			if(subfile2.getSize() > 0 && !subfile2.getOriginalFilename().equals("")) {
				
				
				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);
				
				String originalFileName = subfile2.getOriginalFilename();	//오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
				
				File targetFile = new File(fileRoot + savedFileName);	
				try {
					InputStream fileStream = subfile2.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
					vo.setSer_subimg2(savedFileName); //uuid
					vo.setSer_originsub2(originalFileName); //원본
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
				}
				
				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		}catch(Exception e){
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL\" }";
		}
		
		//서브3
		try {
			// 파일이 있을때 탄다.
			if(subfile3.getSize() > 0 && !subfile3.getOriginalFilename().equals("")) {
				
				
				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);
				
				String originalFileName = subfile3.getOriginalFilename();	//오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
				
				File targetFile = new File(fileRoot + savedFileName);	
				try {
					InputStream fileStream = subfile3.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
					vo.setSer_subimg3(savedFileName); //uuid
					vo.setSer_originsub3(originalFileName); //원본
					
				} catch (Exception e) {
					//파일삭제
					FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
					e.printStackTrace();
				}
				
				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		}catch(Exception e){
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL\" }";
		}
		
		int n = serviceDao.serviceInsert(vo);
		if(n != 1) {
			strResult = "{ \"result\":\"FAIL\" }";
		}else {
			strResult = "{ \"result\":\"OK\" }";
		}
		
		return strResult;
	}
	
	@RequestMapping("/serviceUpdateForm.do")
	public String serviceUpdateForm(Model model, @Param("ser_code") String ser_code) {
		model.addAttribute("service", serviceDao.serviceSelect(ser_code));
		System.out.println(serviceDao.serviceSelect(ser_code));
		return "seller/serviceUpdateForm";
	}
	
	@ResponseBody
	@RequestMapping("/serviceUpdate.do")
	public String serviceUpdate(ServiceVO vo, @RequestParam("file") MultipartFile file, @RequestParam("subfile") MultipartFile subfile, 
			@RequestParam("subfile2") MultipartFile subfile2, @RequestParam("subfile3") MultipartFile subfile3, 
			HttpSession session,HttpServletRequest request) throws UnsupportedEncodingException {
		vo.setS_email("lsj");
		
		System.out.println(file.getOriginalFilename());
		
		ServiceVO vo2 = new ServiceVO();
		vo2 = serviceDao.serviceSelect(vo.getSer_code());
		
		String fileRoot;
		
		//메인이미지 새로 등록했을때
		if(file.getSize() > 0 && !file.getOriginalFilename().equals("")) {
			
			fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
			System.out.println(fileRoot);
			
			String originalFileName = file.getOriginalFilename();	//오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
			String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
			
			File targetFile = new File(fileRoot + savedFileName);	
			File targetFile2 = new File(fileRoot + vo2.getSer_img());
			//이미있는파일 삭제
			if (targetFile2.exists()) {
				targetFile2.delete();
			}
			
			try {
				InputStream fileStream = file.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
				vo.setSer_img(savedFileName); //uuid
				vo.setSer_imgorigin(originalFileName); //원본
				
			} catch (Exception e) {
				//파일삭제
				FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
				e.printStackTrace();
			}
		}
		//메인이미지 null일때
		else {
			//기존이미지 유지
			vo.setSer_img(vo2.getSer_img());
			vo.setSer_imgorigin(vo2.getSer_imgorigin());
			
		}
		
		
		//서브1
		
		//서브2
		
		//서브3
		
		
		
		
		
		
		int n = serviceDao.serviceUpdate(vo);
		
		return "";
	}
	
	@ResponseBody
	@RequestMapping("/fileDelete.do")
	public boolean fileDelete(@RequestParam("sercode") String ser_code, @RequestParam("status") String status) {
		System.out.println(ser_code);
		System.out.println(status);
		ServiceVO vo = new ServiceVO();
		vo = serviceDao.serviceSelect(ser_code);
		
		boolean b = true;
		
		if(status.equals("subfile")) {
			File file = new File("C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\", vo.getSer_subimg());
			if (file.exists()) {
				file.delete();
			}
		}else if(status.equals("subfile2")) {
			File file = new File("C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\", vo.getSer_subimg2());
			if (file.exists()) {
				file.delete();
			}
		}else {
			File file = new File("C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\", vo.getSer_subimg3());
			if (file.exists()) {
				file.delete();
			}
		}
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ser_code", ser_code);
		map.put("status", status);
		
		int n = serviceDao.fileDelete(map);
		if(n != 1) {
			b = false;
		}
		return b;
	}
}
