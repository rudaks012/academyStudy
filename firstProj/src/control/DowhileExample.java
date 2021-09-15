package control;

public class DowhileExample {

	public static void main(String[] args) {
		// Do..While
		boolean run = false;
//		while(run) {
//			System.out.println("실행문1.");
//	}

		int cnt = 0;

		do {
			cnt++;
			if(cnt % 2 == 0) {
				continue; //반복문에서 continue는 밑 내용을 실행 하지않고 다음순번
			}
			System.out.println(cnt);
			if (cnt >= 10) {
				break;
			}
			

		} while (true);
		System.out.println("끝.");

	}

}
