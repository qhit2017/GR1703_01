package com.lianxi1211;

public class Demo4 {
	//���1~10000֮����8��ͷ����7��β���ܱ�3��������
	public static void main(String[] args) {
		for(int i=0;i<=10000;i++){
			String s=""+i;
			if(s.charAt(0)=='8'&&s.charAt(s.length()-1)=='7'&&i%3==0){
				System.out.println(i);
			}
		}
		
	}

}
