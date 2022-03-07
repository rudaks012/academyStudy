package co.Nasa.prj.admin.member.service;

import co.Nasa.prj.admin.service.Criteria;
import lombok.Data;

@Data
public class MemberCriteria extends Criteria {
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
		String b_date2;

}
