package operator;

public class OperatorExample2 {

	public static void main(String[] args) {
		// ����(�Ҵ�)������
		int num1, num2, result;
		num1 = num2 = 10;
		
		result = num1 + num2;
		
		result = result + 10;
		result += 10;
		
		result -= 10; // result = result - 10;
		result *= 10; // result = result * 10;
		result /= 10; // result = result / 10;
		result %= 10; // result = result % 10;
		
		String str = "Hello";
		str = str + "World";
		str += "welcome";
		System.out.println(str);
		
		// 3�� ������ 
		// pass���� �Է� score �� 60���� ū�� -> ?������� ��/���� üũ
		int score = 80;
		boolean pass = (score > 60) ? true : false;
		String isOk = (score > 60) ? "pass" : "Fail";
		
		
		
		
	}

}
