package com.lianxi1211;

import java.util.Scanner;

public class Demo3 {
	//�Ӽ��̽���һ���ַ����������ֽص�����Сд��ĸת�ɴ�д��Ȼ������µ��ַ���
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String n=sc.next();
		for(int i=0;i<10;i++){
			n=n.replace(""+i,"");
		}
		System.out.println(n.toUpperCase());
		
	}

}
