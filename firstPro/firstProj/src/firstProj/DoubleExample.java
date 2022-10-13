package firstProj;

public class DoubleExample {

	public static void main(String[] args) {
		// double(8byte), float(4byte)
		double d1 = 3.1;
		double d2 = 6.9;
		
		float f1 = 3.2F;
		
		double r1 = d1 + d2;
		System.out.println(r1);
		
		d1 = d2 = 2.3;
		
		boolean isSame = d1 == d2;
		System.out.println(isSame);
		
		String s1 = "Hello";
		String s2 = new String("Hello");
		
		isSame = s1.equals (s2);
		System.out.println(isSame);
	}

}
