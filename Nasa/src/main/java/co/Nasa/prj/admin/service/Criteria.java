package co.Nasa.prj.admin.service;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum; //페이지번호
	private int amount; //한 페이지당 몇개의 데이터
	
	//구매자
	private String b_email;
	private String b_nickname;
	private String b_name;
	private String b_tel;
	private String b_address;
	private String b_rank;
	private String b_date;
	private String b_date2;
	
	
	//판매자
	private String s_email;
	private String s_nickname;
	private String s_name;
	private String s_tel;
	private String s_address;
	private String s_rank;
	private String s_date;
	private String s_date2;
	
	
	private String re_type;
	private String re_reporter;
	private String re_date;
	private String re_date2;
	
	private String ser_title;
	private String ser_line;
	private String ser_team;
	
	private String cat_no;
	private String sub_no;
	
	private String pay_cate;
	private String pay_cate1;
	private String pay_date;
	
	private String ser_cate;
	private String ser_sub_cate;
	private String power_date;
	private String power_date2;
	private String s_author;

	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
}
