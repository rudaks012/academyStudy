package control;

public class DowhileExample {

	public static void main(String[] args) {
		// Do..While
		boolean run = false;
//		while(run) {
//			System.out.println("���๮1.");
//	}

		int cnt = 0;

		do {
			cnt++;
			if(cnt % 2 == 0) {
				continue; //�ݺ������� continue�� �� ������ ���� �����ʰ� ��������
			}
			System.out.println(cnt);
			if (cnt >= 10) {
				break;
			}
			

		} while (true);
		System.out.println("��.");

	}

}
