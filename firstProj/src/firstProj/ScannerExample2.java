package firstProj;
import java.util.Scanner;
public class ScannerExample2 {

	public static void main(String[] args) {
	// ����: ����� �Է�(10,20)
	// �ι�° �Է� 20
	// 10 + 20 = 30
	
	Scanner scn = new Scanner(System.in);
	System.out.println("���ڸ� �Է� �ϼ���");
	int age = scn.nextInt();
	System.out.println("�ι�° ���ڸ� �Է��ϼ���");
	int age1 = scn.nextInt();
	
	int result = age + age1;
		System.out.println("����� " + result);
	

	}

}
