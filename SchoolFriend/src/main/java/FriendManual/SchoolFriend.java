package FriendManual;

public class SchoolFriend extends Friend {

	String school;

	/**
	 * @param name
	 * @param tel
	 * @param address
	 * @param school
	 */

	public SchoolFriend(String name, String tel, String address, String school) {
		super(name, tel, address);
		this.school = school;
		this.name = name;
		this.tel = tel;
		this.address = address;
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param name
	 * @param tel
	 * @param address
	 * @param school
	 */

	@Override
	public void friendPrint() {
		System.out.println("�̸� : " + name);
		System.out.println("��ȭ��ȣ : " + tel);
		System.out.println("�ּ� : " + address);
		System.out.println("���� : �б�ģ��");
	}

}
