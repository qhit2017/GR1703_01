package com.zuoye;

import java.util.Scanner;

public class hgugut {
	
	/*2 �Ӽ��̽���һ���ַ���������ַ�����Ĵ�д��ĸ����СдӢ����ĸ����
	 * ��Ӣ����ĸ��

	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("����һ���ַ���");
		String str=sc.nextLine();
		int a=0;
		int b=0;
		int c=0;
		for(int t=0;t<str.length();t++){
			if(str.charAt(t)>='a'&&str.charAt(t)<='z'){
				a++;
			}else if(str.charAt(t)>='A'&&str.charAt(t)<='Z'){
				b++;
			}	else if(str.charAt(t)<10){
				c++;
			}
		}
		System.out.println("�ַ�����Ĵ�д��ĸ��"+a);
		System.out.println("�ַ������Сд��ĸ��"+b);
		System.out.println("�ַ�����ķ�Ӣ��ĸ��"+c);
	}

}
