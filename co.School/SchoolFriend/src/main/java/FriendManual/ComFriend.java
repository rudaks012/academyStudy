package FriendManual;

public class ComFriend extends Friend{

	public ComFriend(String name, String tel, String address, String string) {
		super(name, tel, address);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void friendPrint() {
		System.out.println("�̸� : " + name);
		System.out.println("��ȭ��ȣ : " + tel);
		System.out.println("�ּ� : " + address);
		System.out.println("���� : ���嵿��");
	}
	

}
