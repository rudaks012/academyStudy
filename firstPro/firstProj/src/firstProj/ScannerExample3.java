package firstProj;
import java.util.Scanner;
public class ScannerExample3 {
	//�������� �Է�
	//�������� �Է�
	//�̸��Է�
	//�հ������� 120�� �̻�
	//ȫ�浿 ���� ����, ���������� ����?, ����� ? �Դϴ�
	
	public static void main(String[] args) {
	
		Scanner scn = new Scanner(System.in);
		System.out.println("���������� �Է��ϼ���...");
		int eng = scn.nextInt();
		System.out.println("���������� �Է��ϼ���...");
		int math = scn.nextInt();
		scn.nextLine();
		System.out.println("�̸��� �Է��ϼ���");
		String name = scn.nextLine();
		
		int sum = eng + math;
		int avg = (eng +math)/ 2;
		
		
		
		
		System.out.printf("%s���� ����, ���������� ����%d, ����� %d�Դϴ� ",name,sum,avg);
		if ( sum > 120)
		{
		System.out.println(name +"���� �հ� �Դϴ�");
		} 
		 
			
		else
		{
			System.out.println(name+"���� ���հ� �Դϴ�");
		}
		
		
	}}


