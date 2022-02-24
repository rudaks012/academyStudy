package co.Nasa.prj.admin.service;

import lombok.Data;

@Data
public class AdminAuthorVO {
	
	//buyer 구매자
	String b_email;
	String b_rank;
	String b_password;
	String b_nickname;
	String b_tel;
	String b_address;
	String b_zipcode;
	String b_detailaddress;
	String b_author;
	String b_img;
	String b_status;
	String b_date;
	String b_report;
	String token;
	String filed_code;
	String buyer_coupon;
	String b_name;
	
	//payment 결제내역
	String pay_code; //결제내역
	
	
	String s_email; //판매자id
	String s_code; //서비스코드
	String pay_date;
	String pay_cate; //카테고리1
	String pay_cate1; //카테고리2
	String pay_type;
	String pay_coupon;
	String pay_price;
	String pay_enddate; //구매확정날짜
}
