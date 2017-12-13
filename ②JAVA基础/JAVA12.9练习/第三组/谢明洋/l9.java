package 练习;

import java.util.Scanner;

public class l9 {
	
	public static void main(String[] args) {
		//反转输出一个数
		
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		while(n>10){
			System.out.print(n%10);
			n=n/10;
		}
		System.out.println(n);
	}

}
