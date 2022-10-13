package control;

public class DowhileExe {
	public static void main(String[] args) {
		boolean run = false;
		// 1부터 10 까지 출력
		// 짝수만
		// 1~10 더하기
		int i = 1;
		do {
			System.out.println(i);
			i++;
		} while (i <= 10);

		System.out.println("1끝\n");

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
		System.out.println("끝2");

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
		System.out.println("끝3");

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
		System.out.println("끝4");
		// 임의의 값을 1~10 까지 생성
		// sum 값이 100 보다 큰 수가 되었을때
		// 그때의 sum 값ㅇ르 출력 .. 몇번 실행을 하였는가
		// sum: 101, 실행; 13
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
//				sum = +b; // 더하기
//				i++; // 실행수
//			} while (sum <= 100);
//		System.out.printf("합값:%s 실행값%s", sum, i);
//		System.out.println(i);
//		System.out.println(sum);

	}

}