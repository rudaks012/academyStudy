package control;

public class conditionExe {

	public static void main(String[] args) {
		// �� ���� 60, 70
		// �� ���� ���� ��� 100���� �Ѿ�� �հ�, �ƴϸ� ���հ�
		// ��.

		// �� ���� ���ؼ� ¦���̸� ¦��, Ȧ���̸� Ȧ��
		// 2��° ��

		int num1 = 60;
		int num2 = 70;

		if (num1 + num2 >= 100) {
			System.out.println("�հ�");
		} else {
			System.out.println("���հ�");
		}
		System.out.println("��");

		if ((num1 * num2) % 2 == 0) {
			System.out.println("¦�� �Դϴ�");
		} else {
			System.out.println("Ȧ�� �Դϴ�.");
		}
		System.out.println("�ι�° ��");

		// ���մ��Կ�����
		// 4...2�� ���...
		// num1 10���� ������ 2�� ����̸� 2 ,3 �̸� 3�ǹ��, 6�� 2,3�� ����Դϴ�.

		int num3 = 6;

		if (num3 % 2 == 0 && num3 % 3 == 0) {
			System.out.println("2�� 3�� ����Դϴ�.");
		} else if (num3 % 2 == 0) {
			System.out.println("2�� ����Դϴ�");
		} else if (num3 % 3 == 0) {
			System.out.println("3�� ����Դϴ�.");
		}
		System.out.println("3��° ��");

//		Math.random(double Ÿ��)*6 �ϸ� 6�̸�= double ��� 1�̸��� �� ��� 
		int randomValue = (int) (Math.random() * 6) + 1;
		System.out.println(randomValue);
//switch - > case���������� ������ ���� ����- �´°� ����  ���� �� �ٽ���
//		-> break ���(���� �ʼ�)�ؼ� ������������ (���� �����ȵ�)
//		������ default ��� 
		switch (randomValue) {
		case 1:
			System.out.println("1�Դϴ�.");
			break;
		case 2:
			System.out.println("2�Դϴ�.");
			break;
		case 3:
			System.out.println("3�Դϴ�.");
			break;
		case 4:
			System.out.println("4�Դϴ�.");
			break;
		case 5:
			System.out.println("5�Դϴ�.");
			break;
		case 6:
			System.out.println("6�Դϴ�.");
			break;
		default:
			break;

		}
		System.out.println("4��° ��");
		int randomScore = (int) (Math.random() * 100);
		System.out.println(randomScore);
		if (randomScore > 90) {
			System.out.println("A");
		} else if (randomScore > 80) {
			System.out.println("B");
		} else if (randomScore > 70) {
			System.out.println("C");
		} else if (randomScore > 60) {
			System.out.println("D");
		} else {
			System.out.println("F");
		}
		System.out.println("5��°��\n");
		switch (randomScore / 10) {
		case 9:
			System.out.println("A�����Դϴ�");
			break;
		case 8:
			System.out.println("B�����Դϴ�");
			break;
		case 7:
			System.out.println("C�����Դϴ�");
			break;
		case 6:
			System.out.println("D�����Դϴ�");
			break;
		default:
			System.out.println("F�����Դϴ�");
			break;
		// 0������ 99�� ���� ���������� 90 ���̻� a 80���̻� b
		}
		System.out.println(randomScore);
	}
}
