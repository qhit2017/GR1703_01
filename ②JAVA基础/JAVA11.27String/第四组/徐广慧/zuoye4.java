package zuoye27;

import java.util.Scanner;

public class zuoye4 {
//给定一个由数字组成的字符串,如:"1239586838923173478943890234092",统计出每个数字出现的次数
	
	public static void main(String[] args) {
		String str="1239586838923173478943890234092";
				int a=0;
				int b=0;
				int c=0;
				int d=0;
				int e=0;
				int f=0;
				int g=0;
				int x=0;
				int m=0;
				int n=0;
		for(int z=0;z<str.length();z++){
			if(str.charAt(z)=='0'){
				a++;
			}else if(str.charAt(z)=='1'){
				b++;
			
			}else if(str.charAt(z)=='2'){
				c++;
			
			}else if(str.charAt(z)=='3'){
				d++;
			
			}else if(str.charAt(z)=='4'){
				e++;
			
			}else if(str.charAt(z)=='5'){
				f++;
			
			}else if(str.charAt(z)=='6'){
				g++;
			
			}else if(str.charAt(z)=='7'){
				x++;
			
			}else if(str.charAt(z)=='8'){
				n++;
			
			}else if(str.charAt(z)=='9'){
				m++;
			}
					}		
	System.out.println(a);			
	System.out.println(b);			
	System.out.println(c);			
	System.out.println(d);			
	System.out.println(e);			
	System.out.println(f);			
	System.out.println(g);			
	System.out.println(x);			
	System.out.println(n);			
	System.out.println(m);			
				
				
	
	
	}
	
	
}
