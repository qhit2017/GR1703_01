package com.xingwenzhe;

public class z {
	/*
	 * String s="hijavahehejavahejava";�ҳ��ַ������м���java?
	 */

	public static void main(String[] args) {
		
		String i="hijavahehejavahejava";
		
		 String []str=i.split("java");
		
		int sum=0;
		
		for(String j:str){
			sum=sum+1;
		}
		System.out.println(sum);
		}
	}

