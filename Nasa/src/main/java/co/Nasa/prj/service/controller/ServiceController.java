package co.Nasa.prj.service.controller;

import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.Nasa.prj.category.service.CategoryService;
import co.Nasa.prj.comm.VO.CategoryVO;
import co.Nasa.prj.comm.VO.PagingDTO;
import co.Nasa.prj.comm.VO.ReviewVO;
import co.Nasa.prj.comm.VO.ServiceVO;
import co.Nasa.prj.comm.VO.SubCategoryVO;
import co.Nasa.prj.review.service.ReviewMapper;
import co.Nasa.prj.seller.service.SellerService;
import co.Nasa.prj.service.service.ServiceService;
import co.Nasa.prj.sub_category.service.Sub_CategoryService;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService serviceDao;
	@Autowired
	private SellerService sellerDAO;
	@Autowired
	private CategoryService categoryDao;
	@Autowired
	private Sub_CategoryService subCategoryDao;
	@Autowired
	private ReviewMapper reviewDao;

	// 카테고리 별 서비스 목록
	@RequestMapping("/homeCategory.do")
	public String homeCategory(Model model, @Param("ser_cate") String ser_cate, PagingDTO pagingdto) {
		pagingdto.setAmount(8);
		ServiceVO vo = new ServiceVO();
		vo.calcStartEnd(pagingdto.getPageNum(), pagingdto.getAmount());
		vo.setSer_cate(ser_cate);
		pagingdto.setTotal(serviceDao.homeCategorySelectCount(vo));
		model.addAttribute("paging", new PagingDTO(pagingdto.getTotal(), pagingdto.getPageNum()));
		model.addAttribute("homecatelist", serviceDao.homeCategorySelect(vo));
		return "user/homeCategory";
	}

	// 전체 서비스 목록
	@RequestMapping("/homeCategoryAll.do")
	public String homeCategoryAll(Model model, PagingDTO pagingdto, ServiceVO vo) {
		pagingdto.setAmount(8);
		vo.calcStartEnd(pagingdto.getPageNum(), pagingdto.getAmount());
		pagingdto.setTotal(serviceDao.homeCategorySelectAllCount(vo));
		model.addAttribute("paging", new PagingDTO(pagingdto.getTotal(), pagingdto.getPageNum()));
		model.addAttribute("allservicelist", serviceDao.homeCategorySelectAll(vo));
		return "user/homeCategoryAll";
	}

	@RequestMapping("/sellerService.do")
	public String sellerService(Model model, HttpSession session) {
		String s_email = (String) session.getAttribute("id");
		model.addAttribute("serviceList", serviceDao.serviceMaxEnddateList(s_email));
		return "seller/sellerService";
	}

	@ResponseBody
	@RequestMapping("/serviceInsertForm.do")
	public String fileUpload(ServiceVO vo, @RequestParam("file") MultipartFile file,
			@RequestParam("subfile") MultipartFile subfile, @RequestParam("subfile2") MultipartFile subfile2,
			@RequestParam("subfile3") MultipartFile subfile3, HttpSession session, HttpServletRequest request)
			throws UnsupportedEncodingException {

		vo.setS_email((String) session.getAttribute("id"));
		// vo.setS_email("lsj");
		System.out.println(file.getOriginalFilename());
		System.out.println(subfile.getOriginalFilename());
		System.out.println(subfile2.getOriginalFilename());
		System.out.println(subfile3.getOriginalFilename());

		String fileRoot;
		String strResult = "{ \"result\":\"FAIL\" }";

		// 메인
		try {
			// 파일이 있을때 탄다.
			if (file.getSize() > 0 && !file.getOriginalFilename().equals("")) {

				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);

				String originalFileName = file.getOriginalFilename(); // 오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
				String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

				File targetFile = new File(fileRoot + savedFileName);
				try {
					InputStream fileStream = file.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
					vo.setSer_img(savedFileName); // uuid
					vo.setSer_imgorigin(originalFileName); // 원본

				} catch (Exception e) {
					// 파일삭제
					FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
					e.printStackTrace();
				}

				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		} catch (Exception e) {
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL1\" }";
		}

		// 서브1
		try {
			// 파일이 있을때 탄다.
			if (subfile.getSize() > 0 && !subfile.getOriginalFilename().equals("")) {

				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);

				String originalFileName = subfile.getOriginalFilename(); // 오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
				String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

				File targetFile = new File(fileRoot + savedFileName);
				try {
					InputStream fileStream = subfile.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
					vo.setSer_subimg(savedFileName); // uuid
					vo.setSer_originsub(originalFileName); // 원본

				} catch (Exception e) {
					// 파일삭제
					FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
					e.printStackTrace();
				}

				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		} catch (Exception e) {
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL2\" }";
		}

		// 서브2
		try {
			// 파일이 있을때 탄다.
			if (subfile2.getSize() > 0 && !subfile2.getOriginalFilename().equals("")) {

				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);

				String originalFileName = subfile2.getOriginalFilename(); // 오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
				String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

				File targetFile = new File(fileRoot + savedFileName);
				try {
					InputStream fileStream = subfile2.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
					vo.setSer_subimg2(savedFileName); // uuid
					vo.setSer_originsub2(originalFileName); // 원본

				} catch (Exception e) {
					// 파일삭제
					FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
					e.printStackTrace();
				}

				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		} catch (Exception e) {
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL3\" }";
		}

		// 서브3
		try {
			// 파일이 있을때 탄다.
			if (subfile3.getSize() > 0 && !subfile3.getOriginalFilename().equals("")) {

				fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
				System.out.println(fileRoot);

				String originalFileName = subfile3.getOriginalFilename(); // 오리지날 파일명
				String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
				String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

				File targetFile = new File(fileRoot + savedFileName);
				try {
					InputStream fileStream = subfile3.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
					vo.setSer_subimg3(savedFileName); // uuid
					vo.setSer_originsub3(originalFileName); // 원본

				} catch (Exception e) {
					// 파일삭제
					FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
					e.printStackTrace();
				}

				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		} catch (Exception e) {
			e.printStackTrace();
			strResult = "{ \"result\":\"FAIL4\" }";
		}

		int n = serviceDao.serviceInsert(vo);
		if (n != 1) {
			strResult = "{ \"result\":\"FAIL5\" }";
		} else {
			strResult = "{ \"result\":\"OK\" }";
		}

		return strResult;
	}

	@RequestMapping("/serviceUpdateForm.do")
	public String serviceUpdateForm(Model model, @Param("ser_code") String ser_code, HttpSession session) {
		model.addAttribute("service", serviceDao.serviceSelect(ser_code));

		ServiceVO vo = new ServiceVO();
		vo.setSer_code(ser_code);
		vo.setS_email((String) session.getAttribute("id"));
		model.addAttribute("endDate", serviceDao.serviceSelectMaxEnd(vo));
		System.out.println(serviceDao.serviceSelect(ser_code));
		return "seller/serviceUpdateForm";
	}

	@ResponseBody
	@RequestMapping("/serviceUpdate.do")
	public String serviceUpdate(ServiceVO vo, @RequestParam("file") MultipartFile file,
			@RequestParam("subfile") MultipartFile subfile, @RequestParam("subfile2") MultipartFile subfile2,
			@RequestParam("subfile3") MultipartFile subfile3, HttpSession session, HttpServletRequest request,
			@RequestParam("subfilex") String subfilex, @RequestParam("subfilex2") String subfilex2,
			@RequestParam("subfilex3") String subfilex3) throws UnsupportedEncodingException {

		System.out.println("serviceUpdate()");
		System.out.println(subfilex);
		System.out.println(subfilex2);
		System.out.println(subfilex3);
		System.out.println("vo는 빈값이여야만한다.");
		System.out.println(vo);

		vo.setS_email((String) session.getAttribute("id"));

		System.out.println("==============" + file.getOriginalFilename());
		System.out.println("==============" + vo.getSer_code());
		ServiceVO vo2 = new ServiceVO();
		vo2 = serviceDao.serviceSelect(vo.getSer_code());
		System.out.println("=================" + vo2);
		System.out.println("=================" + vo2.getSer_img());
		String fileRoot;
		fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
		// 메인이미지 새로 등록했을때
		if (file.getSize() > 0 && !file.getOriginalFilename().equals("")) {

			// fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
			System.out.println(fileRoot);

			String originalFileName = file.getOriginalFilename(); // 오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
			String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

			File targetFile = new File(fileRoot + savedFileName);
			File targetFile2 = new File(fileRoot + vo2.getSer_img());
			// 이미있는파일 삭제
			if (targetFile2.exists()) {
				targetFile2.delete();
			}

			try {
				InputStream fileStream = file.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
				vo.setSer_img(savedFileName); // uuid
				vo.setSer_imgorigin(originalFileName); // 원본

			} catch (Exception e) {
				// 파일삭제
				FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
				e.printStackTrace();
			}
		}
		// 메인이미지 null일때
		else {
			// 기존이미지 유지
			vo.setSer_img(vo2.getSer_img());
			vo.setSer_imgorigin(vo2.getSer_imgorigin());
		}

		// 서브1
		if (subfile.getSize() > 0 && !subfile.getOriginalFilename().equals("")) {

			// fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
			System.out.println(fileRoot);

			String originalFileName = subfile.getOriginalFilename(); // 오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
			String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

			File targetFile = new File(fileRoot + savedFileName);
			File targetFile2 = new File(fileRoot + vo2.getSer_subimg());
			// 이미있는파일 삭제
			if (targetFile2.exists()) {
				targetFile2.delete();
			}

			try {
				InputStream fileStream = subfile.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
				vo.setSer_subimg(savedFileName); // uuid
				vo.setSer_originsub(originalFileName); // 원본

			} catch (Exception e) {
				// 파일삭제
				FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
				e.printStackTrace();
			}
		} else {
			// 기존이미지 유지
			if (!subfilex.equals("")) {
				vo.setSer_subimg(vo2.getSer_subimg());
				vo.setSer_originsub(vo2.getSer_originsub());
			} else {
				File targetFile2 = new File(fileRoot + vo2.getSer_subimg());
				// 이미있는파일 삭제
				if (targetFile2.exists()) {
					targetFile2.delete();
				}
			}
		}

		// 서브2
		if (subfile2.getSize() > 0 && !subfile2.getOriginalFilename().equals("")) {

			fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
			System.out.println(fileRoot);

			String originalFileName = subfile2.getOriginalFilename(); // 오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
			String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

			File targetFile = new File(fileRoot + savedFileName);
			File targetFile2 = new File(fileRoot + vo2.getSer_subimg2());
			// 이미있는파일 삭제
			if (targetFile2.exists()) {
				targetFile2.delete();
			}

			try {
				InputStream fileStream = subfile2.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
				vo.setSer_subimg2(savedFileName); // uuid
				vo.setSer_originsub2(originalFileName); // 원본

			} catch (Exception e) {
				// 파일삭제
				FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
				e.printStackTrace();
			}
		}

		else {
			// 기존이미지 유지
			if (!subfilex.equals("")) {
				vo.setSer_subimg2(vo2.getSer_subimg2());
				vo.setSer_originsub2(vo2.getSer_originsub2());
			} else {
				File targetFile2 = new File(fileRoot + vo2.getSer_subimg2());
				// 이미있는파일 삭제
				if (targetFile2.exists()) {
					targetFile2.delete();
				}
			}
		}

		// 서브3
		if (subfile3.getSize() > 0 && !subfile3.getOriginalFilename().equals("")) {

			fileRoot = "C:\\NASA\\NASA02\\Nasa\\src\\main\\webapp\\fileupload\\";
			System.out.println(fileRoot);

			String originalFileName = subfile3.getOriginalFilename(); // 오리지날 파일명
			String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
			String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

			File targetFile = new File(fileRoot + savedFileName);
			File targetFile2 = new File(fileRoot + vo2.getSer_subimg3());
			// 이미있는파일 삭제
			if (targetFile2.exists()) {
				targetFile2.delete();
			}

			try {
				InputStream fileStream = subfile3.getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
				vo.setSer_subimg3(savedFileName); // uuid
				vo.setSer_originsub3(originalFileName); // 원본

			} catch (Exception e) {
				// 파일삭제
				FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
				e.printStackTrace();
			}
		}

		else {
			// 기존이미지 유지
			if (!subfilex.equals("")) {
				vo.setSer_subimg3(vo2.getSer_subimg3());
				vo.setSer_originsub3(vo2.getSer_originsub3());
			} else {
				vo.setSer_subimg3(null);
				vo.setSer_originsub3(null);
				File targetFile2 = new File(fileRoot + vo2.getSer_subimg3());
				// 이미있는파일 삭제
				if (targetFile2.exists()) {
					targetFile2.delete();
				}
			}
		}

		System.out.println("최종vo값");
		System.out.println(vo);

		int n = serviceDao.serviceUpdate(vo);
		if (n != 1) {
			return "FAIL";
		}
		return "OK";
	}

	@RequestMapping("/serviceDetail.do")
	public String sellerDetail(Model model, @RequestParam("ser_code") String ser_code, HttpSession session,
			HttpServletResponse response, HttpServletRequest request) {
		ServiceVO vo = new ServiceVO();
		vo = serviceDao.serviceSelect(ser_code);
		System.out.println("++++++++++++" + vo);
		model.addAttribute("detailS", serviceDao.serviceSelect(ser_code));

		CategoryVO catevo = new CategoryVO();
		catevo.setCat_no(vo.getSer_cate());
		model.addAttribute("cate", categoryDao.selectCategory(catevo));

		SubCategoryVO subcatevo = new SubCategoryVO();
		subcatevo.setSub_no(vo.getSer_sub_cate());
		model.addAttribute("subcate", subCategoryDao.selectSub_category(subcatevo));

		model.addAttribute("sellerInfo", sellerDAO.SellerSelect(vo.getS_email()));

		ReviewVO reviewvo = new ReviewVO();
		reviewvo.setScode(ser_code);
		List<ReviewVO> reviewList = reviewDao.selectReviewandReviewComment(reviewvo);
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!" + reviewList);
		model.addAttribute("reviewList", reviewList);

		return "seller/serviceDetail";
	}

	@ResponseBody
	@RequestMapping("/endService.do")
	public String endService(@RequestParam("ser_code") String ser_code, @RequestParam("ser_reason") String ser_reason,
			@RequestParam("ser_end") String ser_end) {
		ServiceVO vo = new ServiceVO();
		vo.setSer_code(ser_code);
		vo.setSer_reason(ser_reason);
		vo.setSer_end(ser_end);

		int n = serviceDao.endService(vo);
		if (n != 1) {
			return "F";
		}
		return "T";
	}

	@Scheduled(cron = "0 0 0 * * ?")
	public void EndDateCheck() {
		serviceDao.schEndDateCheck();
		System.out.println("enddate 스케쥴러 체크");
	}
}
