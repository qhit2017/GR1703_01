package com.eq;

public class one {
// 给定一个由数字组成的字符串,如:"1239586838923173478943890234092",统计出每个数字出现的次数
	
	public static void main(String[] args) {
		int a=0;
		int b=0;
		int c=0;
		int d=0;
		int e=0;
		int f=0;
		int g=0;
		int h=0;
		int i=0;
		int j=0;
		int k=0;
		
		String str="1239586838923173478943890234092";
		for(int t=0;t<str.length();t++){
			if(str.charAt(t)=='1'){
				a++;
			}else if(str.charAt(t)=='2'){
				b++;
			}else if(str.charAt(t)=='3'){
				c++;
			}else if(str.charAt(t)=='4'){
				d++;
			}else if(str.charAt(t)=='5'){
				e++;
			}else if(str.charAt(t)=='6'){
				f++;
			}else if(str.charAt(t)=='7'){
				g++;
			}else if(str.charAt(t)=='8'){
				h++;
			}else if(str.charAt(t)=='9'){
				i++;
			}else if(str.charAt(t)=='0'){
				j++;
			}
			System.out.println("0出现的次数"+j);
			System.out.println("1出现的次数"+a);
			System.out.println("2出现的次数"+b);
			System.out.println("3出现的次数"+c);
			System.out.println("4出现的次数"+d);
			System.out.println("5出现的次数"+e);
			System.out.println("6出现的次数"+f);
			System.out.println("7出现的次数"+g);
			System.out.println("8出现的次数"+h);
			System.out.println("9出现的次数"+i);
		
		
		}
	}
}
