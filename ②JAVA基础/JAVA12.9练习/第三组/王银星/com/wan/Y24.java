package com.wan;

public class Y24 {
	//�����ַ��� String str = "abcdefghijk" ����ַ����ĺ�5λ
	public static void main(String[] args) {
		String str = "abcdefghijk";
		String[]sz=str.split("");
		for(int i=sz.length-1;i>=6;i--){
			System.out.print(sz[i]);
		
		}
	}
		

}
