package reference;

public class ArrayExample2 {

	public static void main(String[] args) {
		// 1 ~ 10 ���� ���� ���� ����
		// �л� 10��.

		int[] scores = new int[10];
		System.out.println(scores.length);
		for (int i = 0; i < scores.length; i++) {
			int temp = (int) (Math.random() * 10) + 1;
			scores[i] = temp;
			System.out.println("int�迭: " + scores[i]);
		}
//		scores �迭Ÿ��. scores [0] int Ÿ��.

//		// ���
//		for (int i = 0, l = scores.length; i<l; i++) { // ���� �������� ����
//		System.out.printf("scores[%d} => %d\n", i,scores[i]);
//
//		}
//		System.out.println("��1");

		// �迭�� ����ִ� ��ҵ��� ��
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];

		}
		System.out.println("�迭�� �հ� " + sum);
		System.out.println("��2");

		// �迭�� ����� 5���� ū ���� �հ�
		for (int i = 0; i < scores.length; i++) {
			if (scores[i] > 5) {
				sum += scores[i];
				System.out.println(scores[i]);
			}
		}
		System.out.println("5���� ū���� ��ģ��" + sum);
		System.out.println("3��");
		System.out.println();

		// �迭 ����� ¦����° ���� �հ�
		
		for (int i = 0; i < scores.length; i++) {
			if (scores[i] % 2 == 0) {
				sum += scores[i];
				System.out.println(scores[i]);
			}
		}

	}

}
