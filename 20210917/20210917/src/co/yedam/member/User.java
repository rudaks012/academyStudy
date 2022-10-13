package co.yedam.member;

enum Grade {
	SPECIAL, SUPER, MID, GUEST
}

public class User {
	// 사용자의 아이디, 사용자의 비밀번호, 사용자 이름, 등급, 나이
	private String userId; // String class 들은 전부다 null로 출력
	private String userPw;
	private String userName;
	private Grade userGrade;
	private int userAge; // int class 들은 전부다 0로 출력

	// 생성자
	public User() {
	}

	public User(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
		// this -> 자기 자신이 가지고 있는 생성자 호출
	}

	public User(String userId, String userPw, String userName, Grade userGrade, int userAge) {
//		this(); // 기본생성자
		this(userId, userPw);
		this.userName = userName;
		this.userGrade = userGrade;
		this.userAge = userAge;

	}

	// 메소드 입력
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		userName = userName;
	}

	public Grade getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(Grade userGrade) {
		this.userGrade = userGrade;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userGrade=" + userGrade
				+ ", userAge=" + userAge + "]";
	}

	public void showInfo() {
		System.out.printf(" User [userId=%s,userPw:%s,userName:%s,userGrade:%s,userAge:%s]\n", userId, userPw, userName,
				userGrade, userAge);

	}
}
