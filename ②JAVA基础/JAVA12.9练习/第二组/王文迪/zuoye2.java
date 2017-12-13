package zy;

import java.util.Scanner;


 public class zuoye2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		for(int a=1;a<=9;a++){
			for(int b=1;b<=a;b++){
				System.out.print(a+"*"+b+"="+a*b+"\t");
			}
			System.out.println();
		}
	}

}
		

