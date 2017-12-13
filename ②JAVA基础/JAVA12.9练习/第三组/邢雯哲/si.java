package com.xingwenzhe;

import java.util.Scanner;

public class liu {
	
	//请输出1~100之间，以4结尾且能被3整除的数
	
	public static void main(String[] args) {
        for(int i=1;i<=100;i++){
        	if(i%10==4 && i%3==0){
        		System.out.println(i);
        }
	}

	}
}