package co.yedam.Movie.Jay.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import co.yedam.Movie.Jay.service.AdminMovieService;
import co.yedam.Movie.Jay.service.KakaoLoginApiService;
import co.yedam.Movie.Jay.service.MemberService;
import co.yedam.Movie.Jay.service.NaverLoginBO;
import co.yedam.Movie.comm.MemberVO;
import co.yedam.Movie.comm.MovieVO;
import co.yedam.Movie.man.service.NoticeService;
import co.yedam.Movie.taejoon.service.MovieService;

@Controller("movieJayController")
public class JayController {

	// 수정

	@Autowired
	private MemberService memDao;

	@Autowired
	private JavaMailSender mail;

	@Autowired
	private AdminMovieService adminMovieDao;

	@Autowired
	String saveDirectory;

	@Autowired
	private KakaoLoginApiService kakao;

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("/kakaologin.do")
	public String kakaologin(@RequestParam String code, HttpSession session) {
		String access_Token = kakao.getAccessToken(code);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		System.out.println("controller access_token : " + access_Token);
		System.out.println(code);
		if (userInfo.get("email") != null) {
			System.out.println("email : " + userInfo.get("email"));
			System.out.println("nickname : " + userInfo.get("nickname"));
//			session.setAttribute("userId", userInfo.get("email"));
//			session.setAttribute("access_Token", access_Token);
		}

		return "redirect:loginForm.do";
	}

	@RequestMapping("/kakaologout.do")
	public String kakaologout(HttpSession session) {
		kakao.kakaoLogout((String) session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");

		return "loginForm";
	}

	@RequestMapping("/naverlogin.do")
	@ResponseBody
	public String naverlogin(HttpSession session) {
		String reqUrl = naverLoginBO.getAuthorizationUrl(session);
		return reqUrl;
	}

	// 네이버 연동정보 조회
	@RequestMapping("/naverlogininfo.do")
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		
	
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
	
		apiResult = naverLoginBO.getUserProfile(oauthToken); 
	
	
		
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		
		JSONObject jsonObj = (JSONObject) obj;
		System.out.println("jsonObj"+ jsonObj);
		
		JSONObject response_obj = (JSONObject) jsonObj.get("response");

		String access_token = oauthToken.getAccessToken(); 
		System.out.println("access_token : "+ access_token);
		String email = (String) response_obj.get("email");
		
		System.out.println(email);
	
		session.setAttribute("token", access_token);
		
		session.setAttribute("id", email); 
//	model.addAttribute("result", apiResult);
		return "loginForm";
	}

	@RequestMapping("/remove.do") 
	public String remove(HttpSession session, HttpServletRequest request, Model model) {
		String token = (String) session.getAttribute("token");
		String apiUrl = "https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=" + NaverLoginBO.CLIENT_ID
				+ "&client_secret=" + NaverLoginBO.CLIENT_SECRET + "&access_token=" + token.replaceAll("'", "")
				+ "&service_provider=NAVER";
		try {
			System.out.println("apiUrl : " +apiUrl);
			String res = requestToServer(apiUrl);
			System.out.println(res); 
			session.invalidate();
		} catch (IOException e) {
	
			e.printStackTrace();
		}

		return "loginForm";
	}

	
	 private String requestToServer(String apiURL) throws IOException {
		    URL url = new URL(apiURL);
		    HttpURLConnection con = (HttpURLConnection)url.openConnection();
		    con.setRequestMethod("GET");
		   
		    int responseCode = con.getResponseCode();
		    BufferedReader br;
		    System.out.println("responseCode="+responseCode);
		    if(responseCode == 200) {
		      br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		    } else {  
		      br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		    }
		    String inputLine;
		    StringBuffer res = new StringBuffer();
		    while ((inputLine = br.readLine()) != null) {
		      res.append(inputLine);
		    }
		    br.close();
		    System.out.println(res);
		    if(responseCode==200) {
		    	String new_res=res.toString().replaceAll("&#39;", "");
				 return new_res; 
		    } else {
		      return null;
		    }
		  }

	@RequestMapping("/ajaxLogin.do")
	@ResponseBody
	public HashMap<String, String> ajaxLogin(Model model, MemberVO vo, HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		vo = memDao.memeberLogin(vo);

		if (vo == null) {
			System.out.println("null");
			map.put("msg", "No");
			return map;
		} else {
			session.setAttribute("id", vo.getMemId());
			session.setAttribute("name", vo.getMemName());
			session.setAttribute("author", vo.getAuthor());
			map.put("msg", "Yes");
			map.put("author", vo.getAuthor());
			map.put("name", vo.getMemName());
			return map;
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "admin/adminHome";
	}

	@RequestMapping("/ajaxidfindchk.do")
	@ResponseBody
	public String ajaxidfindchk(MemberVO vo) {
		vo = memDao.memberIdFindChk(vo);
		if (vo == null) {
			System.out.println("null");
			return "No";
		} else {
			return vo.getMemId();
		}
	}

	@RequestMapping("/ajaxpasswordfindidnamechk.do")
	@ResponseBody
	public String ajaxpasswordfindidnamechk(MemberVO vo) {
		System.out.println(vo.getMemId());
		System.out.println(vo.getMemName());
		vo = memDao.memberPasswordFindIdNameChk(vo);
		if (vo == null) {
			System.out.println("null");
			return "No";
		} else {
			return "Yes";
		}
	}

	@RequestMapping("/ajaxemailconfirm.do")
	@ResponseBody
	public String ajaxemailconfirm(int randomnum, String email, String name) throws MessagingException {
		System.out.println(randomnum + "  " + email + "  " + name);
		MimeMessage message = mail.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		messageHelper.setFrom("yedammovie@gmail.com");
		messageHelper.setTo(email);
		String subjectval = "안녕하세요 Yedam 입니다. " + name + "님 요청하신 인증 번호 입니다.";
		String textval = "3분 이내로 인증번호(6자리)를 입력해 주세요.\n 인증번호는 || " + randomnum + " || 입니다.";
		messageHelper.setSubject(subjectval);
		messageHelper.setText(textval);
		mail.send(message);
		return "Yes";
	}

	@RequestMapping("/passwordupdate.do")
	public String passwordupdate(MemberVO vo, Model model) {
		System.out.println("dd");
		System.out.println(vo.getMemId());
		vo = memDao.memberSelect(vo);
		model.addAttribute("id", vo.getMemId());
		model.addAttribute("name", vo.getMemName());
		return "admin/passwordupdate";

	}

	@RequestMapping("/formpasswordupdate.do")
	public String formpasswordupdate(MemberVO vo) {
		System.out.println(vo.getMemPassword());
		System.out.println(vo.getMemId());
		int n = memDao.formpasswordupdate(vo);
		System.out.println(n);
		return "admin/adminHome";

	}

	@RequestMapping("/movieList.do")
	public String movieList(Model model) {
		model.addAttribute("movies", adminMovieDao.adminMovieSelectList());
		return "admin/movieList";
	}

	@RequestMapping("/movieinputForm.do")
	public String movieinsert() {
		return "admin/movieinputForm";
	}

	@RequestMapping("/movieinsert.do")
	public String movieinsert(MovieVO vo, MultipartFile file) {

		String fileName = file.getOriginalFilename();
		String pfileName = getRandomString(16);
		pfileName = pfileName + fileName.substring(fileName.lastIndexOf("."));
		File target = new File(saveDirectory, pfileName);
		vo.setFilename(fileName);
		vo.setPfilename(pfileName);

		if (!new File(saveDirectory).exists()) {
			new File(saveDirectory).mkdir();
		}
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			adminMovieDao.adminMovieInsert(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:movieList.do";
	}

	private static String getRandomString(int length) {
		StringBuffer sb = new StringBuffer();
		Random random = new Random();

		for (int i = 1; i <= length; i++) {
			sb.append((char) ((int) (random.nextInt(26)) + 65));
			if (i % 4 == 0 && i != length) {
				sb.append("-");
			}
		}
		return sb.toString();
	}

	@RequestMapping("/adminMovieSelect.do")
	@ResponseBody
	public MovieVO adminMovieSelect(MovieVO vo, Model model) {
		return adminMovieDao.adminMovieSelect(vo);
	}

	@RequestMapping("/adminMovieUpdate.do")
	public String adminMovieUpdate(MovieVO vo, Model model) {
		model.addAttribute("movies", adminMovieDao.adminMovieSelectList());
		adminMovieDao.adminMovieUpdate(vo);

		return "admin/movieList";
	}

	@RequestMapping("/imgtestjsp.do")
	public String imgtestjsp() {
		return "admin/imgtest";
	}

	@RequestMapping("/imgtest.do")
	public void imgtest(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("imgage/jpeg");
		ServletOutputStream out = resp.getOutputStream();

		FileInputStream fis = new FileInputStream(
				"C:\\project\\Movie\\Movie\\src\\main\\webapp\\resources\\movieposter\\DMLV-VVCQ-POUE-PVZZ.jpg");

		//
		BufferedInputStream bis = new BufferedInputStream(fis);
		BufferedOutputStream bos = new BufferedOutputStream(out);

		int readBytes = 0;
		while ((readBytes = bis.read()) != -1) {
			bos.write(readBytes);
		}
		bis.close();
		bos.close();
	}

}
