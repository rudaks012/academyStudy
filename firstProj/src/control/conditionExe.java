package control;

public class conditionExe {

	public static void main(String[] args) {
		// 두 정수 60, 70
		// 두 수를 합한 결과 100점을 넘어서면 합격, 아니면 불합격
		// 끝.

		// 두 수를 곱해서 짝수이면 짝수, 홀수이면 홀수
		// 2번째 끝

		int num1 = 60;
		int num2 = 70;

		if (num1 + num2 >= 100) {
			System.out.println("합격");
		} else {
			System.out.println("불합격");
		}
		System.out.println("끝");

		if ((num1 * num2) % 2 == 0) {
			System.out.println("짝수 입니다");
		} else {
			System.out.println("홀수 입니다.");
		}
		System.out.println("두번째 끝");

		// 복합대입연산자
		// 4...2의 배수...
		// num1 10으로 나누고 2의 배수이면 2 ,3 이면 3의배수, 6은 2,3의 배수입니다.

		int num3 = 6;

		if (num3 % 2 == 0 && num3 % 3 == 0) {
			System.out.println("2와 3의 배수입니다.");
		} else if (num3 % 2 == 0) {
			System.out.println("2의 배수입니다");
		} else if (num3 % 3 == 0) {
			System.out.println("3의 배수입니다.");
		}
		System.out.println("3번째 끝");

//		Math.random(double 타입)*6 하면 6미만= double 사용 1미만의 값 사용 
		int randomValue = (int) (Math.random() * 6) + 1;
		System.out.println(randomValue);
//switch - > case순차적으로 위에서 부터 실행- 맞는거 이후  남은 거 다실행
//		-> break 사용(거진 필수)해서 빠져나가야함 (범위 지정안됨)
//		마지막 default 사용 
		switch (randomValue) {
		case 1:
			System.out.println("1입니다.");
			break;
		case 2:
			System.out.println("2입니다.");
			break;
		case 3:
			System.out.println("3입니다.");
			break;
		case 4:
			System.out.println("4입니다.");
			break;
		case 5:
			System.out.println("5입니다.");
			break;
		case 6:
			System.out.println("6입니다.");
			break;
		default:
			break;

		}
		System.out.println("4번째 끝");
		int randomScore = (int) (Math.random() * 100);
		System.out.println(randomScore);
		if (randomScore > 90) {
			System.out.println("A");
		} else if (randomScore > 80) {
			System.out.println("B");
		} else if (randomScore > 70) {
			System.out.println("C");
		} else if (randomScore > 60) {
			System.out.println("D");
		} else {
			System.out.println("F");
		}
		System.out.println("5번째끝\n");
		switch (randomScore / 10) {
		case 9:
			System.out.println("A학점입니다");
			break;
		case 8:
			System.out.println("B학점입니다");
			break;
		case 7:
			System.out.println("C학점입니다");
			break;
		case 6:
			System.out.println("D학점입니다");
			break;
		default:
			System.out.println("F학점입니다");
			break;
		// 0점부터 99점 까지 임의의점수 90 점이상 a 80점이상 b
		}
		System.out.println(randomScore);
	}
}
