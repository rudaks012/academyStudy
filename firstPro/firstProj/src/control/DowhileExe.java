package control;

public class DowhileExe {
	public static void main(String[] args) {
		boolean run = false;
		// 1���� 10 ���� ���
		// ¦����
		// 1~10 ���ϱ�
		int i = 1;
		do {
			System.out.println(i);
			i++;
		} while (i <= 10);

		System.out.println("1��\n");

		i = 1;
		do {
			if (i % 2 == 1) {
				i++;
				continue;
			}
			if (i <= 10) {
				System.out.println(i);
				i++;
			} else {
				break;
			}
		} while (true);
		System.out.println("��2");

		i = 1;
		do {
			i++;
			if (i % 2 == 0) {

				continue;
			}
			if (i <= 10) {
				System.out.println(i);
				i++;
			} else {
				break;
			}

		} while (true);
		System.out.println("��3");

		i = 0;
		int sum = 0;
		do {
			if (i % 2 == 0) {
				i++;
				continue;
			}
			if (i <= 10) {
				sum += i; // sum = sum+i
				i++;
			} else {
				break;
			}
		} while (true);
		System.out.println(sum);
		System.out.println("��4");
		// ������ ���� 1~10 ���� ����
		// sum ���� 100 ���� ū ���� �Ǿ�����
		// �׶��� sum ������ ��� .. ��� ������ �Ͽ��°�
		// sum: 101, ����; 13
		sum = 0;
		i = 0;

		do {
			if (sum < 100) {
				int b = (int) (Math.random() * 10) + 1;
				sum += b;
				i++;
			} else {
				break;

			}
		} while (true);

//			do {
//				int b = (int) (Math.random() * 10) + 1;
//				sum = +b; // ���ϱ�
//				i++; // �����
//			} while (sum <= 100);
//		System.out.printf("�հ�:%s ���ప%s", sum, i);
//		System.out.println(i);
//		System.out.println(sum);

	}

}