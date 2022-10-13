package co.Nasa.prj.chatting.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.Nasa.prj.chatting.service.ChatMessage;
import co.Nasa.prj.chatting.service.ChatRoom;
import co.Nasa.prj.chatting.service.ChatService;


@Controller
public class WebSocketHandler extends TextWebSocketHandler implements InitializingBean {


	@Autowired
	ChatService cService;
	private final ObjectMapper objectMapper = new ObjectMapper();

	// 채팅방 목록 <방 번호
	// 채팅방 목록 <방 번호, ArrayList<session> >이 들어간다.
	private Map<String, ArrayList<WebSocketSession>> RoomList = new ConcurrentHashMap<String, ArrayList<WebSocketSession>>();
	
	// session, 방 번호가 들어간다.
	private Map<WebSocketSession, String> sessionList = new ConcurrentHashMap<WebSocketSession, String>();
	private ArrayList<String> sentidlist = new ArrayList<String>();
	private static int i;
	/**
	 * websocket 연결 성공 시
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		i++; // 접속 인원 추가 
		System.out.println(session.getId() + " 연결 성공 => 총 접속 인원 : " + i + "명");
		
	}
	/**
	 * websocket 연결 종료 시 close()
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		i--;
		System.out.println(session.getId() + " 연결 종료 => 총 접속 인원 : " + i + "명");
		// sessionList에 session이 있다면
		if (sessionList.get(session) != null) {
			// 해당 session의 방 번호를 가져와서, 방을 찾고, 그 방의 ArrayList<session>에서 해당 session을 지운다.
			RoomList.get(sessionList.get(session)).remove(session);
			sessionList.remove(session);
		}
		System.out.println("안들어가나 세션값");
	}
	// 메세지 송수신 send/ onMessage
	 @Override
	    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		 System.out.println("handle테스트");
	 
	        // 전달받은 메세지
	        String msg = message.getPayload();
	        
	        // Json객체 → Java객체
	        // 출력값 : [roomId=123, messageId=null, message=asd, name=천동민, email=cheon@gmail.com, unReadCount=0]
	        ChatMessage chatMessage = objectMapper.readValue(msg,ChatMessage.class);
	        System.out.println("찍어보자12" + chatMessage);
	        
	        // 받은 메세지에 담긴 roomId로 해당 채팅방을 찾아온다.
	        System.out.println(cService.selectChatRoom(chatMessage.getRoomid()));
	        ChatRoom chatRoom = cService.selectChatRoom(chatMessage.getRoomid());
	        System.out.println("찍어보자룸" + chatRoom);
	        
	        // 채팅 세션 목록에 채팅방이 존재하지 않고, 처음 들어왔고, DB에서의 채팅방이 있을 때
	        // 채팅방 생성
	        if(RoomList.get(chatRoom.getRoomid()) == null && chatMessage.getMessage().equals("ENTER-CHAT") && chatRoom != null) {
	            
	            // 채팅방에 들어갈 session들
	            ArrayList<WebSocketSession> sessionTwo = new ArrayList<>();
	            // session 추가
	            sessionTwo.add(session);
	            // sessionList에 추가
	            sessionList.put(session, chatRoom.getRoomid());
	            sessionList.put(session, chatRoom.getSer_code());
	            // RoomList에 추가
	            RoomList.put(chatRoom.getRoomid(), sessionTwo);
	            System.out.println("-------------------------------------!!!"+session);
	            RoomList.put(chatRoom.getSer_code(), sessionTwo);
	            // 확인용
	            System.out.println("채팅방 생성");
	        }
	        
	        // 채팅방이 존재 할 때
	        else if(RoomList.get(chatRoom.getRoomid()) != null && chatMessage.getMessage().equals("ENTER-CHAT") && chatRoom != null) {
	            
	            // RoomList에서 해당 방번호를 가진 방이 있는지 확인.
	            RoomList.get(chatRoom.getRoomid()).add(session);
	            RoomList.get(chatRoom.getSer_code()).add(session);
	            // sessionList에 추가
	            sessionList.put(session, chatRoom.getRoomid());
	            sessionList.put(session, chatRoom.getSer_code());
	            // 확인용
	            System.out.println("생성된 채팅방으로 입장");
	        }
	        
	        // 채팅 메세지 입력 시
	        else if(RoomList.get(chatRoom.getRoomid()) != null && !chatMessage.getMessage().equals("ENTER-CHAT") && chatRoom != null) {
	            
	            // 메세지에 이름, 이메일, 내용을 담는다.
	            TextMessage textMessage = new TextMessage(chatMessage.getNickname() + "," + chatMessage.getSentid() + "," + chatMessage.getMessage());
	            
	            // 현재 session 수
	            int sessionCount = 0;
	 
	            // 해당 채팅방의 session에 뿌려준다.
	            for(WebSocketSession sess : RoomList.get(chatRoom.getRoomid())) {
	            	System.out.println(sess);
	                sess.sendMessage(textMessage);
	                sessionCount++;
	            }
	            
	            // 동적쿼리에서 사용할 sessionCount 저장
	            // sessionCount == 2 일 때는 unReadCount = 0,
	            // sessionCount == 1 일 때는 unReadCount = 1
	            chatMessage.setSessionCount(sessionCount);
	            
	            // DB에 저장한다.
	            int a = cService.insertMessage(chatMessage);
	            
	            if(a == 1) {
	                System.out.println("메세지 전송 및 DB 저장 성공");
	            }else {
	                System.out.println("메세지 전송 실패!!! & DB 저장 실패!!");
	            }
	        }
	    }

	
	
	@Override
	public void afterPropertiesSet() throws Exception {
		
		
	}
	
	

	
}
