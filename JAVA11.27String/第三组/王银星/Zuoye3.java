package com.zuoye;

public class Zuoye3 {
	/*
	 * 3 ���. ��֪�ַ�����"this is a test of java".

��Ҫ��ִ�����²�����

(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���

(2) ����"test"���ڵı��

(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.

(4) ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��

(5) �����ַ����ĵ��������

(6) �����ַ���ת����һ���ַ������飬Ҫ��ÿ������Ԫ�ض���һ���������Ӣ�ĵ���,�����������̨
	 */
	public static void main(String[] args) {
		String zf="this is a test of java";
		zf=zf+" ";
		String a=zf.toUpperCase();
		int t=zf.indexOf("test");
		String []sz=zf.split("s");
		System.out.println("�ַ�������ĸs���ֵĴ���Ϊ��"+(sz.length-1)+"�Ρ�");
		System.out.println("����test���ڵı���ǣ�"+t);
		System.out.println(a);  
		String zf1="this is a test of java";
		String []sz1=zf1.split("");
		for(int i=sz1.length-1;i>=0;i--){
			System.out.print(sz1[i]);
		}
		System.out.println();
		String zf2="this is a test of java";
		String []sz2=zf2.split(" ");
		for(String j:sz2){
			System.out.print(j+",");
		}
	}

}
