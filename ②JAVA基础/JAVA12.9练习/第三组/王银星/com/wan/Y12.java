package com.wan;

import java.util.Scanner;

public class Y12 {
	//�Ӽ��̽���һ���ַ����������ֽص�����Сд��ĸת�ɴ�д��Ȼ������µ��ַ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String i=sc.next();
		for(int j=0;j<10;j++){
			
			i=i.replace(j+"", "");
			
		}
		String a=i.toUpperCase();
		System.out.println(a);
	}

}
