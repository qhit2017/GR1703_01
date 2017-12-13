package lianxi;

import java.util.Scanner;

public class Demo2 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int c=sc.nextInt();
		
		int i=a>b?a:b;
		int j=i>c?i:c;
		System.out.println("最大值是："+j);
		
	}

}
