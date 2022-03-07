package co.Nasa.prj.comm.VO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PagingVO {
	private int nowPage; // 현재 페이지
	private int startPage; // 시작 페이지
	private int endPage; // 끝 페이지
	private int total; // 항목 개수
	private int cntPerPage; // 페이지 당 글 갯수
	private int lastPage; // 마지막 페이지
	private int cntPage = 10;
	
	public PagingVO() {}
	
	public PagingVO (int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
	}
	// 끝 페이지 계산
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	}
	// 시작, 끝 페이지 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}
	
}
