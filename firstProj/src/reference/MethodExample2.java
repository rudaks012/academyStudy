package reference;

public class MethodExample2 {

	public static void main(String[] args) {
		sum(33, 28); // �޼ҵ� ����
		int a = 45, b = 77;
		sum(a, b);
		multi(71, 2);
		getArea(15);

		int res = getMax(a, b);
		System.out.println("ū���� : " + res);
		

	}

	// �� ������ �Է¹޾Ƽ� �� ���� ���� ���
	public static void sum(int n1, int n2) { // void -> ��ȯ�� ���� �����ϴ�
		int sum = n1 + n2;
		System.out.println("�μ��� ��: " + sum);
	}

	// �� ������ �Է� �޾Ƽ� �� ���� ���� ���
	public static void multi(int n3, int n4) {
		int sum = n3 * n4;
		System.out.println("�μ��� ��" + sum);

	}

	// ���簢�� ���̸� ��� ���ִ� �޼ҵ�
	public static void getArea(double side) {
		double sum = side * side;
		System.out.println("���簢���� ���̴�" + sum);

	}

	// �μ��߿��� ū���� ��ȯ���ִ� �޼ҵ�
	public static int getMax(int num1, int num2) {
		int result = (num1 >= num2) ? num1 : num2;
		return result;

	}

	// �������� �Է¹޾Ƽ� ù��° / �ι�° ���� ���.
	public static double divide(int a, int b) {
		double result = (double) a / b;
		return result;
	}

}
