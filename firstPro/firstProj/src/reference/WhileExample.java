package reference;

public class WhileExample {

	public static void main(String[] args) {
		// while 반복문.
		int i = 1;
		while (i <= 10) { // 증감식 안하면 무한루프
			System.out.println(i);
			i++;

		}
		// 1 ~ 10 짝수만 출력.
		boolean run = true;
		i = 1;

		while (run) {
			if (i == 10)
				run = false;
			if (i % 2 == 0) {
				System.out.println(i);
			}

			i++;

		}
		while (true) {
			if (i == 11) {
				break;
			}
		}

	}

}
