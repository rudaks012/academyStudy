package co.yedam.member;

public class MemberExample {
	public static void main(String[] args) {
		Member m1 = new Member("user1", "�ڹ̸�", "�뱸�߱� ���ϵ�"); // ������ () ȣ�� ctrl+���콺 �ϸ� ����
		m1.showInfo();

//		m1.memberId = "user1";
		m1.setMemberId("user1");
//		m1.name = "Hong";
		m1.setName("Hong");
//      m1.address = "�߱� ���ϵ�";
		m1.setaddress("�߱� ���ϵ�");

//		System.out.println("���̵�: " + m1.memberId);
		System.out.println("���̵�: " + m1.getMemberId());
//		System.out.println("�̸�: " + m1.name);
		System.out.println("�̸�: " + m1.getName());
//		System.out.println("�ּ�: " + m1.address);
		System.out.println("�ּ�: " + m1.getaddress());

System.out.println("===============m1 =============");
		Member m2 = new Member();
		m2.setMemberId("user2");
		m2.setName("�Ȱ游");
		m2.setaddress("�߱� �Ŵ絿");
		
		System.out.println("���̵�: " + m2.getMemberId());
		System.out.println("�̸�: " + m2.getName());
		System.out.println("�ּ�: " + m2.getaddress());
		m2.showInfo();
		System.out.println("===============m2 =============");
		
		
		
		Member m3 = new Member("user3", "ȫ�浿", "�뱸 �ų���");
		m3.showInfo();
//		m3.name = "�ڱ浿";
		m3.setName("�ڱ浿");
		m3.showInfo();
		
		

//		
	}

}
