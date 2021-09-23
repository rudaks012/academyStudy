package cd.yedam.account;

public class AppExe {
	public static void main(String[] args) {
		Appmain main = Appmain.getInstance(); // 인스턴스 생성
		main.execute();

//		Appmain main2 = Appmain.getInstance(); // 새로운 인스턴스 생성.
//
//		if (main == main2) { // 메모리의 주소값 == 메모리 주소값
//			System.out.println("같은 값");
//		} else {
//			System.out.println("다른 값");
//		}
//
//	}
	}
}
