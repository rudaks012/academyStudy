package co.Nasa.prj.comm.VO;

import java.sql.Date;

import lombok.Data;

@Data
public class ServiceVO {
	String ser_code;
	String pro_code;
	String s_email;
	Date ser_start;
	String ser_title;
	String ser_sub;
	String ser_cate;
	String ser_sub_cate;
	int ser_price;
	int ser_sale;
	String ser_date;
	String ser_img;
	String ser_offer;
	String ser_imgorigin;
	String ser_line;
	String ser_skill;
	String ser_team;
	String ser_lang;
	String ser_frame;
	String ser_dbms;
	String ser_subimg;
	String ser_subimg2;
	String ser_subimg3;
	String ser_originsub;
	String ser_originsub2;
	String ser_originsub3;
	String ser_status;
	String ser_reason;
	String ser_end;
	
	// v_service_list
	int reviewcount;
	int reviewavg;
	String sub_category; // 서브 카테고리
	String nickname;
	String category;
	
	String s_code;
	String pay_enddate;
}
