package co.micol.prj;
/*
 *  -> 추상클래스 : 하나 이상의 abstract를 가지고 있거나 아무것도 없거나
 * 				 중괄호 없는 몸체 (몸체가 비어있는) 
 *  			자기자신을 인스턴스로 생성하지 못한다.
 */


public abstract class Animal {	 // Animal animal = new Animal(); (X)못함
	public abstract void run();	

	public void sleep() {
		System.out.println("잠을 잡니다.");
	}

}
