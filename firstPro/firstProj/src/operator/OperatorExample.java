package operator;

public class OperatorExample {
	public static void main(String[] args) {
	 // +, -, *, / %,&, |, ^,~ 
	 // 연산 결과는 int타입
		int num1, num2, result;
		num1 = 10;
		num2 = 5;
		
// 		result = num2 = num1;
		
		result = num1 * num2; // 할당(대입) 연산자 = 
		result = -result;
		System.out.printf("-연산결과: %d\n",result);
		
		result = num1 % 3;
		System.out.printf("연산결과: %d\n",result);
		
		result = num1 & num2;
		System.out.printf("& 연산결과: %d\n", result);
	
		result = num1 | num2;
		System.out.printf("| 연산결과: %d\n", result);
	
		result = num1 ^ num2;
		System.out.printf("^ 연산결과: %d\n", result);
		
		result = ~num1; //2진수 => ~ + 1 = 0
		// 3 + (-3) = 0
		System.out.printf("~ 연산결과: %d\n", result);
		
		// >>, >>>, << (비트 연산자)
		result = num1 >> 2;
		System.out.printf(">> 연산결과: %d\n", result);
		
		//&&, ||, ! (논리 연산자) && = 하나라도 false -> false
		// || ->  하나라도 true 면 true
		boolean b1 = false;
		boolean b2 = !b1;
		
		boolean b3 = b1 || b2;
		System.out.printf("b3 : %s, b1: %s, b2: %s",b3, b1,b2);
		
		
	}
}
