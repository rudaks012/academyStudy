package co.Nasa.prj.service.controller;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String fileUpload(ServiceVO vo, @RequestParam("file") MultipartFile file, @RequestParam("article_file") List<MultipartFile> multipartFile, 
			HttpSession session,HttpServletRequest request) throws UnsupportedEncodingException {
		
//		vo.setS_email((String)session.getAttribute("id"));
		vo.setS_email("lsj");
		
		System.out.println(file.getOriginalFilename());
		for(MultipartFile file2 : multipartFile) {
			System.out.println(file2.getOriginalFilename());
		}
		
		
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
					vo.setSer_img(fileRoot+savedFileName); //uuid
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
		
		try {
			// 파일이 있을때 탄다.
			if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
				List<String> imgs = new ArrayList<String>();
				int i = 0;
				for(MultipartFile file2:multipartFile) {
					fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
					System.out.println(fileRoot);
					
					String originalFileName = file2.getOriginalFilename();	//오리지날 파일명
					String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
					String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
					
					File targetFile = new File(fileRoot + savedFileName);	
					try {
						InputStream fileStream = file.getInputStream();
						FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
						
						imgs.add(fileRoot+savedFileName); //uuid
						imgs.add(originalFileName); //원본
					} catch (Exception e) {
						//파일삭제
						FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
					i++;
				}
				strResult = "{ \"result\":\"OK\" }";
				
				if(i == 1) {
					imgs.add(null);
					imgs.add(null);
					imgs.add(null);
					imgs.add(null);
				}else if(i == 2) {
					imgs.add(null);
					imgs.add(null);
				}
				
				vo.setSer_subimg(imgs.get(0));
				vo.setSer_originsub(imgs.get(1));
				
				vo.setSer_subimg2(imgs.get(2));
				vo.setSer_originsub2(imgs.get(3));
				
				vo.setSer_subimg3(imgs.get(4));
				vo.setSer_originsub3(imgs.get(5));
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
			System.out.println("파일이미지2");
		}catch(Exception e){
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL\" }";
		}
		
		int n = serviceDao.serviceInsert(vo);
		if(n != 1) {
			strResult = "{ \"result\":\"FAIL\" }";
		}
		return strResult;
	}

}
