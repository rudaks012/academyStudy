package control;

public class ForExe {

	public static void main(String[] args) {
		// 1~10 출력
		// 끝1.

		for (int i = 1; i <= 10; i++) {
			System.out.println(i);

		}
		System.out.println("끝1");
		// 1~10 중에서 2,4,6,8,10
		// 끝2
		for (int i = 2; i <= 10; i += 2) {
			System.out.println(i);

		}
		System.out.println("끝2");
		for (int i = 1; i <= 10; i += 2) {
			System.out.println(i);
//			for (int i =1; i<=10; i++) {
//				if( i % 2==0) {
//					System.out.println(i);
		}
		System.out.println("끝3");
		// 1~10 까지 합을 구하도록. -> 합계 55
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i; // -> sum = sum + i
		}
		System.out.printf("합계:%d\n", sum);
		System.out.println("끝4");

	}

}
