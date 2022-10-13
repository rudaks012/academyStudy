package reference;

public class MethodExample2 {

	public static void main(String[] args) {
		sum(33, 28); // 메소드 실행
		int a = 45, b = 77;
		sum(a, b);
		multi(71, 2);
		getArea(15);

		int res = getMax(a, b);
		System.out.println("큰수는 : " + res);
		

	}

	// 두 정수를 입력받아서 두 수의 합을 출력
	public static void sum(int n1, int n2) { // void -> 반환한 값이 없습니다
		int sum = n1 + n2;
		System.out.println("두수의 합: " + sum);
	}

	// 두 정수를 입력 받아서 두 수의 곱을 출력
	public static void multi(int n3, int n4) {
		int sum = n3 * n4;
		System.out.println("두수의 곱" + sum);

	}

	// 정사각형 넓이를 계산 해주는 메소드
	public static void getArea(double side) {
		double sum = side * side;
		System.out.println("정사각형의 넓이는" + sum);

	}

	// 두수중에서 큰값을 반환해주는 메소드
	public static int getMax(int num1, int num2) {
		int result = (num1 >= num2) ? num1 : num2;
		return result;

	}

	// 두정수를 입력받아서 첫번째 / 두번째 나눈 결과.
	public static double divide(int a, int b) {
		double result = (double) a / b;
		return result;
	}

}
