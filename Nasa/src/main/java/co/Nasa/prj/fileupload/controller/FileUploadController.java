package co.Nasa.prj.fileupload.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;


@Controller
public class FileUploadController {
	
	@RequestMapping(value="/uploadSummernoteImageFile.do", produces = "application/json; charset=utf8", method = {RequestMethod.POST})
	@ResponseBody
	public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		JsonObject jsonObject = new JsonObject();
		
        
		 String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 
		
		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		System.out.println("컨택트루트" +contextRoot);
//		String fileRoot = contextRoot+"resources/fileupload/";
		System.out.println("파일루트" +fileRoot);
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		System.out.println("오리지날" +originalFileName);
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		System.out.println("확장자" + extension);
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		System.out.println("uuid" + savedFileName);
		File targetFile = new File(fileRoot + savedFileName);	
		System.out.println("타겟파일" + targetFile);
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			System.out.println("파일스트림" +fileStream);
			jsonObject.addProperty("url", "summernoteImage/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonObject;
	}
//	@ResponseBody
//	@PostMapping("/summer_image.do")
//	public void summer_image(MultipartFile file, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		String file_name = file.getOriginalFilename();
//		String server_file_name = fileDBName(file_name, savefolder);
//		System.out.println("server file : " + server_file_name);
//		file.transferTo(new File(savefolder + server_file_name));
//		out.println("resources/upload"+server_file_name);
//		out.close();
//	}
//    private String fileDBName(String fileName, String saveFolder) {
//		Calendar c = Calendar.getInstance();
//		int year = c.get(Calendar.YEAR);
//		int month = c.get(Calendar.MONTH);
//		int date = c.get(Calendar.DATE);
//
//		String homedir = saveFolder + year + "-" + month + "-" + date;
//		System.out.println(homedir);
//		File path1 = new File(homedir);
//		if (!(path1.exists())) {
//			path1.mkdir();
//		}
//		Random r = new Random();
//		int random = r.nextInt(100000000);
//
//		int index = fileName.lastIndexOf(".");
//
//		String fileExtension = fileName.substring(index + 1);
//		System.out.println("fileExtension = " + fileExtension);
//
//		String refileName = "bbs" + year + month + date + random + "." + fileExtension;
//		System.out.println("refileName = " + refileName);
//
//		String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
//		System.out.println("fileDBName = " + fileDBName);
//
//		return fileDBName;
//	}
}
