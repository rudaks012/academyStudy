package co.Nasa.prj.chatting.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component("cSession")
//@Component ->bean 등록 어노테이션  class bean으로 등록하기위함
public class ChatSession {
	 // static으로 필드변수를 설정하여 같은 ArrayList를 이용 할 수 있도록 선언합니다.
	private static ArrayList<String> loginUser = new ArrayList<String>();
	
	//로그인 시  ArrayList에 추가
	public void addLoginUser(String  email) {
		loginUser.add(email);
	}
	//로그아웃 arraylist 제거
	public void removeLoginUser(String email) {
		loginUser.remove(email);
	}
	//로그인된 유저목록 가져오기
	public static ArrayList<String> getLoginUser() {
		return loginUser;
	}
	
	//자동 setter 사용 X
	public static void setLoginUser(ArrayList<String> loginUser) {
		ChatSession.loginUser = loginUser;
	}

}
