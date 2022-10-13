package reference;

public class ArrayExample {

	public static void main(String[] args) {
		// 학생 30명
		// int s1, s30;
		// int num, String str;

		int[] intAry = { 1, 2, 3, 4, 5 };
		// [] <- 배열을 담아내는 변수
		System.out.println(intAry[0]); // <- 정수형 변수
		System.out.println(intAry[1]);
		System.out.println(intAry[2]);
		System.out.println(intAry[3]);
		System.out.println(intAry[4]);

		System.out.println("==========다시============");

//		intAry = 10; <- 배열을 사용해야지 정수형변수를 지정할수있음
		intAry[0] = 6;
		intAry[1] = 7;
		intAry[2] = 8;
		intAry[3] = 9;
		intAry[4] = 10;

		for (int i = 0; i < 5; i++) {
			System.out.println(intAry[i]);
		}

		byte[] byteAry = { 1, 2, 3, };
		for (int i = 0; i < 3; i++) {
			System.out.println("byte배열: " + byteAry[i]);
		}

		String[] strAry = { "Hello", "world", "Nice" };
		strAry = new String[] { "Hong", "Kim", "Park" };
		for (int i = 0; i < 3; i++)
			System.out.println("String배열 " + strAry[i]);
//		strAry = new String[] {1,2,3}; <- 정수형이라 안됨  / 문자열이면 가능
//           -> strAry 라는 변수에 다른값을 지정하겠다는 뜻

		double[] db1Ary;
		db1Ary = new double[] { 1, 2.3, 5 };
		
System.out.println("===========float========");
		float[] fltAry = new float[5]; // {0F, 0F, 0F, 0F, 0F}
		for (int i = 0; i < fltAry.length; i++) {
							// 배열의 크기만큼 (length)
			System.out.println(fltAry[i]);

		}
	}

}
