package firstProj;
import java.util.Scanner;
public class Ahngyeongman {

	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		System.out.println("���� �ٴϴ� �п���?");
		String name = scn.nextLine();
		System.out.println("��ġ�� ��� �ֳ���?");
		String lo = scn.nextLine();
		System.out.println("�п� ��ȭ��ȣ��?");
		String number = scn.nextLine();
				if(number.equals("") ) {
			number = "0";
							} 
		
		System.out.println("[�Է��� ����]");
		System.out.printf("�п� : %s\n��ġ : %s\n��ȭ��ȣ : %s",name,lo,number);

	}

}
