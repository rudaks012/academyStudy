//package co.micol.prj.board.service;
//
//import java.sql.Date;
//
//public class BoardVO {
//   //얘를 만들 때는 db의 테이블객체를 열어서 보고 만들어야 한다. 타입과 컬럼명 등등 확인
//   
//   private int bId;
//   private String bWriter;
//   private Date bWriteDate;  //자바 sql import로.
//   private String bTitle;
//   private String bContents;
//   private int bHit;
//   
//   
//   public BoardVO() {
//      //생성자 선언. 다음엔 getset //그럼 VO객체는 다 만든 것. 이제는 interface만들어야 함. ㄱㄱ
//   }
//
//
//   public int getbId() {
//      return bId;
//   }
//
//
//   public void setbId(int bId) {
//      this.bId = bId;
//   }
//
//
//   public String getbWriter() {
//      return bWriter;
//   }
//
//
//   public void setbWriter(String bWriter) {
//      this.bWriter = bWriter;
//   }
//
//
//   public Date getbWriteDate() {
//      return bWriteDate;
//   }
//
//
//   public void setbWriteDate(Date bWriteDate) {
//      this.bWriteDate = bWriteDate;
//   }
//
//
//   public String getbTitle() {
//      return bTitle;
//   }
//
//
//   public void setbTitle(String bTitle) {
//      this.bTitle = bTitle;
//   }
//
//
//   public String getbContents() {
//      return bContents;
//   }
//
//
//   public void setbContents(String bContents) {
//      this.bContents = bContents;
//   }
//
//
//   public int getbHit() {
//      return bHit;
//   }
//
//
//   public void setbHit(int bHit) {
//      this.bHit = bHit;
//   }
//   
//   
//}
//



package co.micol.prj.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardVO {
   //얘를 만들 때는 db의 테이블객체를 열어서 보고 만들어야 한다. 타입과 컬럼명 등등 확인
   
   private int bId;
   private String bWriter;
   private Date bWriteDate;  //자바 sql import로.
   private String bTitle;
   private String bContents;
   private int bHit;
}

   
   
   