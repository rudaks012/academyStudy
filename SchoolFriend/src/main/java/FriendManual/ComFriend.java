package FriendManual;

public class ComFriend extends Friend{

	public ComFriend(String name, String tel, String address, String string) {
		super(name, tel, address);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void friendPrint() {
		System.out.println("이름 : " + name);
		System.out.println("전화번호 : " + tel);
		System.out.println("주소 : " + address);
		System.out.println("구분 : 직장동료");
	}
	

}
