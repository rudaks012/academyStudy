package FriendManual;

public abstract class Friend {
	public String name;
	public String tel;
	public String address;
	

	public Friend(String name, String tel, String address) {
		this.name = name;
		this.tel = tel;
		this.address = address;
	}


	public abstract void friendPrint();

}
