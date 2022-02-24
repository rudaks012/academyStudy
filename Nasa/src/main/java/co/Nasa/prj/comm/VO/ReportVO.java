package co.Nasa.prj.comm.VO;

import lombok.Data;

@Data
public class ReportVO {
	String re_code; // report code
	String re_title;
	String re_type;
	String re_subject; // 신고 내용
	String re_result;
	String filecode; // 첨부파일 id
	String re_reporter; // 신고자 id
	String re_res; // 피신고자 id
	String re_date;
}
