package firstProj;

public class StringExample {
	public static void main(String[] args) {
		int age = 20;
		int age1 = 28;
		
		String name = "ȫ�浿";
		String name1 = "�Ȱ游";
		
		long myAge = age;  // �ڵ�����ȯ(promotion)
		age = (int) myAge; // ��������ȯ(casting)		
		
		
//		age = "ȫ�浿";
//		name = 20;
		
		System.out.println(name1 + "�� ���̴� " + age1);
		
		System.out.println(name1 +"�� ���̴�"+ age1 + "�Դϴ�.");
		
	}
}
