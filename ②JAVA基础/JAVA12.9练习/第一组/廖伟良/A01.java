package hw1209;

import java.util.Scanner;

public class A01 {
	/*
	 * �Ӽ��̽���n���ж�n�Ƿ��ܱ�3����
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		if(n%3==0){
			System.out.println("��");
		}
		else{
			System.out.println("����");
		}
	}
}
