package co.micol.prj;
/*
 *  -> �߻�Ŭ���� : �ϳ� �̻��� abstract�� ������ �ְų� �ƹ��͵� ���ų�
 * 				 �߰�ȣ ���� ��ü (��ü�� ����ִ�) 
 *  			�ڱ��ڽ��� �ν��Ͻ��� �������� ���Ѵ�.
 */


public abstract class Animal {	 // Animal animal = new Animal(); (X)����
	public abstract void run();	

	public void sleep() {
		System.out.println("���� ��ϴ�.");
	}

}
