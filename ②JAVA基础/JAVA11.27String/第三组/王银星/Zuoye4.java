package com.zuoye;

public class Zuoye4 {
	/*
	 * 4  ����һ����������ɵ��ַ���
	 * ,��:"1239586838923173478943890234092",ͳ�Ƴ�ÿ�����ֳ��ֵĴ���
	 */
	public static void main(String[] args) {
		String str="1239586838923173478943890234092";
		for(int i=0;i<10;i++){
			String s=str+" ";
			String[] arr=s.split(""+i);
			
			System.out.println(i+"���ֵĴ����ǣ�"+(arr.length-1));
		}
	}

}
