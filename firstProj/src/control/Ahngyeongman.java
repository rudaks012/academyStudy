package control;

import java.util.Scanner;

public class Ahngyeongman {

	public static void main(String[] args) {
		// if for(while) break, continue
		// ���� -> �ڵ� ����
		boolean run = true;
		int balance = 0;
		Scanner scn = new Scanner(System.in);
		
		while(run) {
			System.out.println("***************");
			System.out.println("1.����| 2.��� | 3. �ܰ� 4.����");
			System.out.println("***************");
			System.out.println("����>");
			
			int menu = scn.nextInt();
			if (menu == 1) {
				System.out.println("���ݾ�>");
			} else if (menu ==2) {
				System.out.println("��ݾ�>");
			} else if (menu ==3) {
				System.out.println("�ܰ�>");
			}else if(menu == 4) {
					break;
				}
			
			}System.out.println("���α׷� ����");
			
		}
	}
