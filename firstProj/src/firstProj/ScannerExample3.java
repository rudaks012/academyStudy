package firstProj;
import java.util.Scanner;
public class ScannerExample3 {
	//영어점수 입력
	//수학점수 입력
	//이름입력
	//합계점수가 120점 이상
	//홍길동 님의 영어, 수학점수의 합은?, 평균은 ? 입니다
	
	public static void main(String[] args) {
	
		Scanner scn = new Scanner(System.in);
		System.out.println("영어점수를 입력하세요...");
		int eng = scn.nextInt();
		System.out.println("수학점수를 입력하세요...");
		int math = scn.nextInt();
		scn.nextLine();
		System.out.println("이름을 입력하세요");
		String name = scn.nextLine();
		
		int sum = eng + math;
		int avg = (eng +math)/ 2;
		
		
		
		
		System.out.printf("%s님의 영어, 수학점수의 합은%d, 평균은 %d입니다 ",name,sum,avg);
		if ( sum > 120)
		{
		System.out.println(name +"님은 합격 입니다");
		} 
		 
			
		else
		{
			System.out.println(name+"님은 불합격 입니다");
		}
		
		
	}}


