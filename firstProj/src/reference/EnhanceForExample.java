package reference;

public class EnhanceForExample {

	public static void main(String[] args) {
		String[] strAry = null;
		strAry = new String[5]; // null,null,null,null,null
		strAry = new String[] { "Hong", "Park", "Choi", "Kim", "Hwang" };
		System.out.println(strAry.length);

		strAry[2] = "Hong"; // ==, equals()

		for (int i = 0; i < strAry.length; i++) {

			if (strAry[i].equals("Hong"))
				System.out.println(strAry[i]);
		}
		System.out.println("=========�ٽ�==========");
		// Enhanced for
		for (String name : strAry) { // for(�ݺ���) strAry�� ����ִ� ����ŭ �ݺ��ϰڴ�
			System.out.println(name);
		}
		int[] scores = { 50, 70, 80, 60 };
		int sum = 0;
		for (int score : scores) {
			sum += score;

		}
		System.out.println("��3");

		// �л� 3��. ���� 4.2, 3.5, 2.8 �迭����
		// �հ踦 ���� �� �ֵ��� ����.
		// ����� ����ؼ� avg ���� ����
		// �л���� : 3.4 �Դϴ�.
		double sum1 = 0;
		double avg1 = 0;
		double[] doubleAry = { 4.2, 3.5, 2.8 };
	
		for (int i = 0; i < 3; i++) {
			sum1 += doubleAry[i];
		}
		System.out.println("���� : " + sum1 );
		avg1 = (double) sum1/ doubleAry.length;
		System.out.println("��� : " + avg1);

	}
}
