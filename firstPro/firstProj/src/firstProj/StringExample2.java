package firstProj;


public class StringExample2 {

	public static void main(String[] args) {
	String name = "�Ȱ游";
	int age = 28;
	
	// �̸��� �Ȱ游, ���̴� 28
	System.out.println("�̸���"+ name+", ���̴�" + age);
	System.out.printf("�̸��� %s, ���̴� %d", name, age );
	System.out.println();
	
	//b1(byte) = 90;
	//b2(byte) = 10;
	//result = b1, b2�� ��
	//90 + 10 = 100 (�ܼ����);
	//isLarger
	// result > 0
		
	
	byte b1 = 100;
	byte b2 = 10;
	int result = b1 + b2;
	boolean isLarger = true;
	isLarger = b1 > b2;
		if(isLarger) {
						System.out.println("��� �Դϴ�");
			
		}
		else {
			System.out.println("���� �Դϴ�.");
		}
			int a1 = 78;
			int a2 = 8;
			int a3 = 220000000;
			double avg = (double)78/8;
			System.out.println(avg);
			
			double avg1 = a1+a2+a3;
			double avg2 = avg1 / 3;
			System.out.println(avg2);

	}
	}




// 2200000000 , 120 , 16
// avg
// 120�� 16���� ���� ��� : 7.5



