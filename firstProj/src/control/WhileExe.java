package control;

public class WhileExe {

	public static void main(String[] args) {
		// while문 사용 1~ 10가지 출력
		// while 구문을 짝수 출력
		// 홀수 출력
		int i = 1;
		while (i <= 10) {
			System.out.println(i);
			i++;

		}
		System.out.println("1끝");
		System.out.println();
		i = 1;
		while (i <= 10) {
			System.out.println(i);
			i += 2;
		}
		System.out.println("2끝");

		i = 2;
		while (i <= 10) {
			System.out.println(i);
			i += 2;
		}
		System.out.println("3끝");
		i = 1;
		int sum = 0;
		while (i <= 10) {
			sum += i;
			System.out.println(sum);

		}
	}

}
