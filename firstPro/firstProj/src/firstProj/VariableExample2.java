package firstProj;

public class VariableExample2 {

	public static void main(String[] args) {
			// �̸�, ����, ��/����
		int age = 25;
		int age1 = 28;
		String name = "�Ȱ游";
		boolean isOk = true;
	
		
		if(age1 > age) {
			System.out.println(name +"�� "+ "25�� �̻��Դϴ�." );
		}
	
		if(age1 < age) {
			System.out.println(name + "��" + "25�� �����Դϴ�");
		}
		
		boolean isOk1 = false;
		// age < ���� => �̸��� 25�� �̻��Դϴ�.
		
		//age > ���� => �̸���25�� �����Դϴ�.
		System.out.println("end of program.");
	
	}


}
