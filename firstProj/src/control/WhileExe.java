package control;

public class WhileExe {

	public static void main(String[] args) {
		// while�� ��� 1~ 10���� ���
		// while ������ ¦�� ���
		// Ȧ�� ���
		int i = 1;
		while (i <= 10) {
			System.out.println(i);
			i++;

		}
		System.out.println("1��");
		System.out.println();
		i = 1;
		while (i <= 10) {
			System.out.println(i);
			i += 2;
		}
		System.out.println("2��");

		i = 2;
		while (i <= 10) {
			System.out.println(i);
			i += 2;
		}
		System.out.println("3��");
		i = 1;
		int sum = 0;
		while (i <= 10) {
			sum += i;
			System.out.println(sum);

		}
	}

}
