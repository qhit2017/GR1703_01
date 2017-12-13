package zy;

import java.util.Scanner;


public class zuoye4 {
	public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入第一个数");
	int a=sc.nextInt();
	System.out.println("请输入第二个数");
	int b=sc.nextInt();
	System.out.println("请输入第三个数");
	int c=sc.nextInt();
	if(a>b&&a>c){
		System.out.println(a);
	}else if(b>c&&b>a){
		System.out.println(b);
	}else if(c>a&&c>b){
		System.out.println(c);
	}
		
		
}
}
