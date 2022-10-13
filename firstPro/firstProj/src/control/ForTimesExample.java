package control;

public class ForTimesExample {

	public static void main(String[] args) {

		for (int j = 2; j <= 9; j++) {

			int row = j;
			System.out.println("====" + row + "´Ü===");
			for (int i = 1; i <= 9; i++) {
				System.out.printf(" %d * %d = %d \n", row, i, (row * i));

			}
		}
	}
}