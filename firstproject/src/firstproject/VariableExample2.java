package firstproject;

public class VariableExample2 {

	public static void main(String[] args) {
			// �̸�, ����, ��/����
		int age = 25;
		int age1 = 28;
		String name = "�Ȱ游";
		boolean isOk = true;
		
		
		if(age > age1) {
			System.out.println(name +"�� "+ "25�� �̻��Դϴ�." );
		}
		boolean isOk1 = false;
		if(age < age1) {
			System.out.println(name + "��" + "25�� �����Դϴ�");
		}
		// age < ���� => �̸��� 25�� �̻��Դϴ�.
		
		//age > ���� => �̸���25�� �����Դϴ�.
	
		System.out.println("end of program.");
	}


}
