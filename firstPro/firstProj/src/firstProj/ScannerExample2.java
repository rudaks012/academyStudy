package firstProj;
import java.util.Scanner;
public class ScannerExample2 {

	public static void main(String[] args) {
	// 변수: 사용자 입력(10,20)
	// 두번째 입력 20
	// 10 + 20 = 30
	
	Scanner scn = new Scanner(System.in);
	System.out.println("숫자를 입력 하세요");
	int age = scn.nextInt();
	System.out.println("두번째 숫자를 입력하세요");
	int age1 = scn.nextInt();
	
	int result = age + age1;
		System.out.println("결과는 " + result);
	

	}

}
