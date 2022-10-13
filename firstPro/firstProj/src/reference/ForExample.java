package reference;

public class ForExample {

	public static void main(String[] args) {

		{// {}안의 값만 변수값 지정됨
			int i = 0;
			int j = 0;
		}
		
		int j = 1; 
		//
		for (int i = 1; i <= 10; i++) { // 정해져있는 경우에 for
			// int i 지정, 정해진 횟수 10 반복 지날수록 +1
			System.out.println(i);
		}

		System.out.println("끝1");
		// 1~10 짝수만 출력..

		for (int i = 1; i <= 10; i++) {
			if (i % 2 == 0) {
				System.out.println(i);
			}
		}
		System.out.println("끝2");
		// 1 ~10 까지중 홀수만 합산

		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			if (i % 2 == 1) {
				sum += i;

			}

		}
		System.out.println("합계: " + sum);
		System.out.println("끝3.");

		sum = 0;
		int cnt = 0; // 횟수를 받아와서 출
		// 1~ 10 sum 의 값이 20을 넘어서는 그때의 횟수
		for (int i = 1; i <= 10; i++) {
			sum += i;
			if (sum >= 20) {
				// i값을 반환
				cnt = i;
				break;
			}
		}
		System.out.println("횟수: " + cnt);
	}

}
