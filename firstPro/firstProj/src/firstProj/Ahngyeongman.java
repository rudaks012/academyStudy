package firstProj;
import java.util.Scanner;
public class Ahngyeongman {

	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		System.out.println("현재 다니는 학원은?");
		String name = scn.nextLine();
		System.out.println("위치는 어디에 있나요?");
		String lo = scn.nextLine();
		System.out.println("학원 전화번호는?");
		String number = scn.nextLine();
				if(number.equals("") ) {
			number = "0";
							} 
		
		System.out.println("[입력한 내용]");
		System.out.printf("학원 : %s\n위치 : %s\n전화번호 : %s",name,lo,number);

	}

}
