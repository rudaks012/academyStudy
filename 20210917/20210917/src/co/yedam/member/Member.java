package co.yedam.member;

public class Member { // public -> open,������ �ٸ�class���� ���ǵ��� ����
	// user1(���̵�), ȫ�浿(�̸�), �뱸 �߱��Ŵ絿(�ּ�)
	private String memberId; // private -> �������� ����� �ٸ�Ŭ���������� ����������� ������ ����
	private String name;
	private String address;

	// ������ : �ʵ忡 ���� �ʱ�ȭ

	public Member() {
//		memberId = "user1";
//		name = "������";
//		address = "�뱸 �߱� ���ϵ�";
	}

	public Member(String mId) {
		memberId = mId;
	}

	public Member(String mId, String n, String a) {
		memberId = mId;
		name = n;
		address = a;
	}

	public void setMemberId(String mId) {
		memberId = mId;
	}

	public void setName(String n) {
		name = n;
	}

	public void setaddress(String a) {
		address = a;
	}

	public String getMemberId() {
		return memberId;		//��ȯ���ִ� �ʵ� : ���̵�
	}

	public String getName() {
		return name;		//��ȯ���ִ� �ʵ� : �̸�
	}

	public String getaddress() {
		return address;		//��ȯ���ִ� �ʵ� : �ּ�
	}

	// �޼ҵ�
	public void showInfo() {
		System.out.println("���̵�: " + memberId + "�̸�: " + name + "�ּ�: " + address);
	}

	public void showMemberId() {
		System.out.println("���̵�: " + memberId);
	}

	public void showName() {
		System.out.println("�̸�:  " + name);

	}

	public void showAddress() {
		System.out.println("�ּ�: " + address);
	}

}
