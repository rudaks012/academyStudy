package firstProj;

public class VariableExample2 {

	public static void main(String[] args) {
			// 이름, 나이, 참/거짓
		int age = 25;
		int age1 = 28;
		String name = "안경만";
		boolean isOk = true;
	
		
		if(age1 > age) {
			System.out.println(name +"은 "+ "25세 이상입니다." );
		}
	
		if(age1 < age) {
			System.out.println(name + "은" + "25세 이하입니다");
		}
		
		boolean isOk1 = false;
		// age < 나이 => 이름은 25세 이상입니다.
		
		//age > 나이 => 이름은25세 이하입니다.
		System.out.println("end of program.");
	
	}


}
