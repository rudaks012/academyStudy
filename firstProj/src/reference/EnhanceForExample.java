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
		System.out.println("=========다시==========");
		// Enhanced for
		for (String name : strAry) { // for(반복문) strAry에 들어있는 수만큼 반복하겠다
			System.out.println(name);
		}
		int[] scores = { 50, 70, 80, 60 };
		int sum = 0;
		for (int score : scores) {
			sum += score;

		}
		System.out.println("끝3");

		// 학생 3명. 평점 4.2, 3.5, 2.8 배열선언
		// 합계를 담을 수 있도록 변수.
		// 평균을 계산해서 avg 변수 선언
		// 학생평균 : 3.4 입니다.
		double sum1 = 0;
		double avg1 = 0;
		double[] doubleAry = { 4.2, 3.5, 2.8 };
	
		for (int i = 0; i < 3; i++) {
			sum1 += doubleAry[i];
		}
		System.out.println("총합 : " + sum1 );
		avg1 = (double) sum1/ doubleAry.length;
		System.out.println("평균 : " + avg1);

	}
}
