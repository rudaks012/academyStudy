package reference;

public class MethodExample5 {

	public static void main(String[] args) {
		int[] scores = { 88, 67, 92, 73, 58 };
		// �ּҰ��� ���ϴ� �ڵ�
		int minval = scores[0];
		boolean isTrue = false;
		for (int i = 0; i < scores.length; i++) {
			isTrue = minval > scores[i];
			if(isTrue) {
				minval = scores[i];
			}

		}System.out.println("�ּҰ� : " + minval);
		
		
	}

//	public static int getMinValue(int[ ary]) {
//
//		return 0;
	}


