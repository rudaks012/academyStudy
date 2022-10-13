package co.yedam.member;

enum Grade {
	SPECIAL, SUPER, MID, GUEST
}

public class User {
	// ������� ���̵�, ������� ��й�ȣ, ����� �̸�, ���, ����
	private String userId; // String class ���� ���δ� null�� ���
	private String userPw;
	private String userName;
	private Grade userGrade;
	private int userAge; // int class ���� ���δ� 0�� ���

	// ������
	public User() {
	}

	public User(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
		// this -> �ڱ� �ڽ��� ������ �ִ� ������ ȣ��
	}

	public User(String userId, String userPw, String userName, Grade userGrade, int userAge) {
//		this(); // �⺻������
		this(userId, userPw);
		this.userName = userName;
		this.userGrade = userGrade;
		this.userAge = userAge;

	}

	// �޼ҵ� �Է�
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
