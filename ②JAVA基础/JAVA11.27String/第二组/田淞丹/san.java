package com.eq;

public class san {
public static void main(String[] args) {
	String stri =  "this is a test of java";
	System.out.println("��һ��:");
	int one=0;
	for(int a=0;a<stri.length();a++){
		if(stri.indexOf("s")>=0){
			stri=stri.substring(stri.indexOf("s")+1, stri.length());
			one++;
		}
	}
	System.out.println("����s�Ĵ���Ϊ��"+one);
	
	
	System.out.println("�ڶ���:");
	stri =  "this is a test of java";
	System.out.println("test���ڱ���ǣ�"+stri.indexOf("test"));
	
	
	System.out.println("������:");
	char[] str = new char[stri.length()];
	for(int a=0;a<str.length;a++){
		str[a]=stri.charAt(a);
		System.out.print(str[a]);
	}
	System.out.println();
	System.out.println("���Ĳ�:");//"this is a test of java"
	str[0]='T';
	str[5]='I';
	str[8]='A';
	str[10]='T';
	str[15]='O';		
	str[18]='J';		
	for(int a=0;a<str.length;a++){
		
		System.out.print(str[a]);
	}
	
	
	System.out.println();
	System.out.println("���岽:");
	System.out.println("�������Ϊ��");
	for(int a=str.length-1;a>=0;a--){
		System.out.print(stri.charAt(a));
	}
	
	
	System.out.println();
	System.out.println("������:");
	String [] arr = stri.split(" ");
	for(int a=0;a<arr.length;a++){
		System.out.println(arr[a]);
	}
}
}
