package co.Nasa.prj.comm.VO;

import lombok.Data;

@Data
public class PagingDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private int pageNum;
	private int amount = 10;
	
	
	public void setTotal(int total) {
		this.total=total;
		this.endPage = (int)(Math.ceil(this.pageNum/10.0))*10;
		this.startPage  = this.endPage-9;
		int realEnd = (int)Math.ceil(this.total/(double)this.amount);
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;

	}
	
	public PagingDTO() {}
	
	public PagingDTO(int total) {
		this.pageNum= getPageNum();
		this.amount= getAmount();
		this.total=total;
		
		this.endPage = (int)(Math.ceil(this.pageNum/10.0))*10;
		this.startPage  = this.endPage-9;
		int realEnd = (int)Math.ceil(this.total/(double)this.amount);
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;
		
		if(startPage < 0) {
			setStartPage(1);
		}
		
		setEndPage(endPage);
	}
}
