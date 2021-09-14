package firstProj;

import java.util.Scanner;

public class ScannerExample4 {

	public static void main(String[] args) {
	// "100" vs 100
		int num1 = 100;
		String num2 = "100";
		//Byte.parseByte(num2)
		//Short.parseShort(num2)
		
		int num2Int = Integer.parseInt(num2); //int -> Integer
		String num3 = "12.25";
		double num3Double = Double.parseDouble(num3);
		
	int result = num2Int + num1;
	Scanner scn = new Scanner(System.in);
	System.out.println("이름을 입력>>> ");
	String name = scn.nextLine();
	System.out.println("나이를 입력 >>>");
	String age = scn.nextLine();
	if(age.equals ("") ) {
		age = "0";
	} // 값이 없으면 0값을 넣고 나온다
	int ageInt = Integer.parseInt(age);
	System.out.println("연락처를 입력>>> ");
	String phone = scn.nextLine();
	
	System.out.println("[입력한 내용]");
	System.out.printf("이름:%s\t 나이:%d\t 연락처:%s\n", name, ageInt, phone);
	System.out.println("끝 ");
	}

}
