package co.Nasa.prj.comm.VO;

import java.sql.Date;

import lombok.Data;

@Data
public class PaymentVO {
	String pay_code; //결제내역
	String b_email; //구매자id
	String s_email; //판매자id
	String s_code; //서비스코드
	String pay_date;
	String pay_cate; //카테고리1
	String pay_cate1; //카테고리2
	String pay_type;
	String pay_coupon;
	int pay_price;
	String pay_enddate; //구매확정날짜
	String event_start;
	String event_end;
	String pay_originp; //원급
	String pay_com; // 수수료
	
	int start; // 쿼리에 쓸 start
	int end; // 위와 같음
	
	public void calcStartEnd(int pageNum, int amount) {
		setEnd(pageNum * amount);
		setStart(getEnd() - amount + 1);
	}
	
	Date firstDate;
	Date secondDate;
}
