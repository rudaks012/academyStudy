package co.Nasa.prj.comm.VO;

import lombok.Data;

@Data
public class PromotionVO {
	String procode; // promotion code
	String s_email; // seller id/email
	String prodiscount; // 할인률
	String pro_start;
	String pro_end;
	String pro_service;
}
