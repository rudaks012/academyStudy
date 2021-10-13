package co.home.prj.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class BoardVO {
	private int bId;
	private String bWriter;
	private Date bWriteDate; // import java.sql
	private String bTitle;
	private String bContents;
	private int bHit;

	public void toListString() {
		System.out.print(bId + " : ");
		System.out.print(bWriter + " : ");
		System.out.print(bWriteDate + " : ");
		System.out.print(bTitle + " : ");
		System.out.print(bHit + "\n");
	}

	public String toString() {
		System.out.println("글번호 : " + bId);
		System.out.println("작성자 : " + bWriter);
		System.out.println("작성일자 : " + bWriteDate);
		System.out.println("제 목 : " + bTitle);
		System.out.println("내 용 : " + bContents);
		System.out.println("조회수 : " + bHit);
		System.out.println("==================");
		return null;
	}
}