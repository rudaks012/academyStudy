package control;

public class ForExe {

	public static void main(String[] args) {
		// 1~10 ���
		// ��1.

		for (int i = 1; i <= 10; i++) {
			System.out.println(i);

		}
		System.out.println("��1");
		// 1~10 �߿��� 2,4,6,8,10
		// ��2
		for (int i = 2; i <= 10; i += 2) {
			System.out.println(i);

		}
		System.out.println("��2");
		for (int i = 1; i <= 10; i += 2) {
			System.out.println(i);
//			for (int i =1; i<=10; i++) {
//				if( i % 2==0) {
//					System.out.println(i);
		}
		System.out.println("��3");
		// 1~10 ���� ���� ���ϵ���. -> �հ� 55
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i; // -> sum = sum + i
		}
		System.out.printf("�հ�:%d\n", sum);
		System.out.println("��4");

	}

}
