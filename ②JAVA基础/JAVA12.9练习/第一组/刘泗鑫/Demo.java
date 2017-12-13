package lianxi;

import java.util.Scanner;

public class Demo {
	
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	String str = sc.next();
	for(int i=0;i<10;i++){
		str=str.replace(""+i, "");
		
	}
	System.out.println(str.toUpperCase());
	
	}

}
