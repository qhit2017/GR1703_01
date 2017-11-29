package com.eq;

public class san {
public static void main(String[] args) {
	String stri =  "this is a test of java";
	System.out.println("第一步:");
	int one=0;
	for(int a=0;a<stri.length();a++){
		if(stri.indexOf("s")>=0){
			stri=stri.substring(stri.indexOf("s")+1, stri.length());
			one++;
		}
	}
	System.out.println("出现s的次数为："+one);
	
	
	System.out.println("第二步:");
	stri =  "this is a test of java";
	System.out.println("test所在编号是："+stri.indexOf("test"));
	
	
	System.out.println("第三步:");
	char[] str = new char[stri.length()];
	for(int a=0;a<str.length;a++){
		str[a]=stri.charAt(a);
		System.out.print(str[a]);
	}
	System.out.println();
	System.out.println("第四步:");//"this is a test of java"
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
	System.out.println("第五步:");
	System.out.println("倒叙输出为：");
	for(int a=str.length-1;a>=0;a--){
		System.out.print(stri.charAt(a));
	}
	
	
	System.out.println();
	System.out.println("第六步:");
	String [] arr = stri.split(" ");
	for(int a=0;a<arr.length;a++){
		System.out.println(arr[a]);
	}
}
}
