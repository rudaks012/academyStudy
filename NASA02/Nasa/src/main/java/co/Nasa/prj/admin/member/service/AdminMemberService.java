package co.Nasa.prj.admin.member.service;

import java.util.List;

import co.Nasa.prj.admin.service.AdminAuthorVO;
import co.Nasa.prj.admin.service.Criteria;
import co.Nasa.prj.comm.VO.BuyerVO;
import co.Nasa.prj.comm.VO.SellerVO;

public interface AdminMemberService {
	//구매자
	//public List<BuyerVO> buyerList();
	public AdminAuthorVO selectBuyer(String id); //구매자 정보
	public List<AdminAuthorVO> selectBuyerPayment(Criteria cri); //구매자 정보와 결제내역
	public List<AdminAuthorVO> getListWithPaging(Criteria cri); //구매자목록 페이징
	public int getBuyerTotal();
	public int searchBuyerTotal(Criteria cri);
	
	public int updateMemberRank(BuyerVO vo);
	
	public int todayNewBuyer();
	public int todayWithdrawalBuyer();
	
	
	//판매자
	public List<SellerVO> sellerList(Criteria cri); //판매자 전체목록
	public AdminAuthorVO selectSeller(String id); //판매자 정보
	public List<AdminAuthorVO> selectSellerServiceList(Criteria cri); //구매자 정보와 결제내역
	public int updateSellerRank(SellerVO vo); //판매자 등급바꾸기
	public int getSellerTotal(Criteria cri);//판매자 검색 총 수
	
	public int totalSeller();
	
	public int todayNewSeller();
	public int todayWithdrawalSeller();
	
}
