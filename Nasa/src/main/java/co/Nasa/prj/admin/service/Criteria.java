package co.Nasa.prj.admin.service;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; //페이지번호
	private int amount; //한 페이지당 몇개의 데이터
	
	private String b_email;
	
	private String re_type;
	private String re_reporter;
	private String re_date;
	private String re_date2;
	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
}
