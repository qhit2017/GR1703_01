package com.wangwendi;

import java.util.Scanner;

public class zuoye2 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);

		System.out.println("������һ���ַ�����");

		String str = sc.next();

		String a = "abcdefghijklmnopqrstuvwxyz";

		String b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

		String c = "1234567890";

		  int z = 0;

		  int x = 0;

		  int c= 0;

		for(int i=0;i<str.length();i++){

			if(a.indexOf(str.charAt(i))>=0){
				z++;
			}else if(b.indexOf(str.charAt(i))>=0){
				x++;
			}else if(c.indexOf(str.charAt(i))>=0){
				c++;
			}
		}
		System.out.println("��д��ĸ��"+A+"��."+"\n"+"Сд��ĸ��"+B+"��."+"\n"+"������"+C+"��.");
		
	}

}
