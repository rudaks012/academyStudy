package control;

public class ConditionExample {
	
	//if -> 조건문 else if 사용하면 다음 조건 설정 문장마다 {} 사용
	//else -> 조건외 모든 경우


	public static void main(String[] args) {
		int score = 50;
		
		if(score >= 60) {
			System.out.println("합격입니다.");
		}
		else {
			System.out.println("불합격입니다.");
		}
		
		
		// 90점 A, 80이상이면 B, 70이상 C, 60이상 D, 그외 F
		
		if(score >=90) {
			System.out.println("A학점");
		}else if (score >=80) {
			System.out.println("B학점");	
		}else if (score >=70) {
			System.out.println("C학점");	
		}else if (score >=60) {
			System.out.println("D학점");	
		}else {
			System.out.println("F학점");
		}
		
		System.out.println("끝.");

	}

}
