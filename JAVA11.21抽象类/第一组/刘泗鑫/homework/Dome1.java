package com.homework;

public class Dome1 {
	
	public static void main(String[] args) {
		
		/*
		 * 4、请输出0~10000之间以3开头的数
		 */
		
		for(int a = 3;a<=10000;a++){
			if(a==3){
				System.out.println(a);
			}else if(a<100 && a/10==3){
				System.out.println(a);	
			}else if(a<1000 && a/100==3){
				System.out.println(a);
			}else if(a<10000 && a/1000==3){
				System.out.println(a);
			}
			
		}
		
	}

}
