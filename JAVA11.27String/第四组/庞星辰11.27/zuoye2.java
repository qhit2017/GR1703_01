package com.zoye;

import java.util.Scanner;

public class zuoye2 {
	/*
	 * �Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ������Ӣ����ĸ��
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("������һ���ַ�����");
		String str=sc.next();
		int i=0;
		int j=0;
		int t=0;
		for(int a=0;a<str.length();a++){
			if(str.charAt(a)>='a' && str.charAt(a)<='z'){
				i++;
			}else if(str.charAt(a)>='A'&&str.charAt(a)<='Z'){
				j++;
			}else if(str.charAt(a)>='0'&&str.charAt(a)<='9'){
				t++;
			}
		}
		
		System.out.println("Сд��ĸ��"+i);
		System.out.println("��д��ĸ��"+j);
		System.out.println("������"+t);
		
	}
	
	
	

}
