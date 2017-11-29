package com.zuoye;

public class y4 {
	/*4  给定一个由数字组成的字符串,
	 * 如
	 *:"1239586838923173478943890234092",统计出每个数字出现的次数
	 * 
	 */
	public static void main(String[] args) {
		String s="1239586838923173478943890234092";
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
		
		for(int t=0;t<s.length();t++){
			if(s.charAt(t)=='0'){
				a++;
			}else if(s.charAt(t)=='1'){
				b++;
			}else if(s.charAt(t)=='2'){
				c++;
			}else if(s.charAt(t)=='3'){
				d++;
			}else if(s.charAt(t)=='4'){
				e++;
			}else if(s.charAt(t)=='5'){
				f++;
			}else if(s.charAt(t)=='6'){
				g++;
			}else if(s.charAt(t)=='7'){
				h++;
			}else if(s.charAt(t)=='8'){
				i++;
			}else if(s.charAt(t)=='9'){
				j++;
			}
			
		}
		System.out.println("0出现了"+a+"次");
		System.out.println("1出现了"+b+"次");
		System.out.println("2出现了"+c+"次");
		System.out.println("3出现了"+d+"次");
		System.out.println("4出现了"+e+"次");
		System.out.println("5出现了"+f+"次");
		System.out.println("6出现了"+g+"次");
		System.out.println("7出现了"+h+"次");
		System.out.println("8出现了"+i+"次");
		System.out.println("9出现了"+j+"次");
	}

}
