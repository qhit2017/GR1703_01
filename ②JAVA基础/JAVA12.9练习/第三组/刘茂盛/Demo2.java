package com.lianxi1211;

public class Demo2 {
	//����һ���ַ��� String str = "1290812479120741"; ��������ֳ��ֵĴ���
	public static void main(String[] args) {
		String str = "1290812479120741";
		for(int i=0;i<10;i++){
			String s=str+"z";
			String []arr=s.split(""+i);
			System.out.println(i+"���ֵĴ�����"+(arr.length-1));
			
			
		}
	}

}
