package cd.yedam.account;

import java.util.Scanner;

public class Appmain {

	// 싱글톤 : new 생성자 호출 => 새로운 인스턴스 계속 만들어짐
	private static Appmain singleton = new Appmain();
	

	
//	 생성자 private
	private Appmain() {
		
	}
	
//	method getInstance()
	public static Appmain getInstance() {
		return singleton;
	}
	Account[] accountArray = new Account[100];
	Scanner scanner = new Scanner(System.in);

	public void createAccount() {
		System.out.println("계좌생성");

	}

	public void accountList() {
		System.out.println("계좌목록");
	}

	public void deposit() {
		System.out.println("입금");
	}

	public void withdraw() {
		System.out.println("출금");
	}

	public Account findAccount(String ano) {
		return null;

	}

	public void execute() {
		boolean run = true;
		Scanner scanner = new Scanner(System.in);
		while (run) {
			System.out.println("-----------");
			System.out.println("1.계좌생성 2. 계좌목록 3. 예금 4. 출금 5. 종료");
			System.out.println("-----------");
			System.out.println("선택>>>>>");

			int selectNo = scanner.nextInt();

			if (selectNo == 1) {
				createAccount();
			} else if (selectNo == 2) {
				accountList();

			} else if (selectNo == 3) {
				deposit();

			} else if (selectNo == 4) {
				withdraw();

			} else if (selectNo == 5) {
				run = false;

			}

		}
	}
}
