package co.bada.prj.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class BoardVO {
	private int bId;
	private String bWriter;
	private Date bWriteDate;  //import java.sql
	private String bTitle;
	private String bContents;
	private int bHit;
}
