package operator;

public class OperatorExample {
	public static void main(String[] args) {
	 // +, -, *, / %,&, |, ^,~ 
	 // ���� ����� intŸ��
		int num1, num2, result;
		num1 = 10;
		num2 = 5;
		
// 		result = num2 = num1;
		
		result = num1 * num2; // �Ҵ�(����) ������ = 
		result = -result;
		System.out.printf("-������: %d\n",result);
		
		result = num1 % 3;
		System.out.printf("������: %d\n",result);
		
		result = num1 & num2;
		System.out.printf("& ������: %d\n", result);
	
		result = num1 | num2;
		System.out.printf("| ������: %d\n", result);
	
		result = num1 ^ num2;
		System.out.printf("^ ������: %d\n", result);
		
		result = ~num1; //2���� => ~ + 1 = 0
		// 3 + (-3) = 0
		System.out.printf("~ ������: %d\n", result);
		
		// >>, >>>, << (��Ʈ ������)
		result = num1 >> 2;
		System.out.printf(">> ������: %d\n", result);
		
		//&&, ||, ! (�� ������) && = �ϳ��� false -> false
		// || ->  �ϳ��� true �� true
		boolean b1 = false;
		boolean b2 = !b1;
		
		boolean b3 = b1 || b2;
		System.out.printf("b3 : %s, b1: %s, b2: %s",b3, b1,b2);
		
		
	}
}
