package firstProj;


public class StringExample2 {

	public static void main(String[] args) {
	String name = "안경만";
	int age = 28;
	
	// 이름은 안경만, 나이는 28
	System.out.println("이름은"+ name+", 나이는" + age);
	System.out.printf("이름은 %s, 나이는 %d", name, age );
	System.out.println();
	
	//b1(byte) = 90;
	//b2(byte) = 10;
	//result = b1, b2의 합
	//90 + 10 = 100 (콘솔출력);
	//isLarger
	// result > 0
		
	
	byte b1 = 100;
	byte b2 = 10;
	int result = b1 + b2;
	boolean isLarger = true;
	isLarger = b1 > b2;
		if(isLarger) {
						System.out.println("양수 입니다");
			
		}
		else {
			System.out.println("음수 입니다.");
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
// 120을 16으로 나눈 결과 : 7.5



