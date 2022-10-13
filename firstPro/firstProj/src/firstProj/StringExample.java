package firstProj;

public class StringExample {
	public static void main(String[] args) {
		int age = 20;
		int age1 = 28;
		
		String name = "홍길동";
		String name1 = "안경만";
		
		long myAge = age;  // 자동형변환(promotion)
		age = (int) myAge; // 강제형변환(casting)		
		
		
//		age = "홍길동";
//		name = 20;
		
		System.out.println(name1 + "의 나이는 " + age1);
		
		System.out.println(name1 +"의 나이는"+ age1 + "입니다.");
		
	}
}
