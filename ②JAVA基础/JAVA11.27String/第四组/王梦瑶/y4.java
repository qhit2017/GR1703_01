package com.zuoye;

public class y4 {
	/*4  ����һ����������ɵ��ַ���,
	 * ��
	 *:"1239586838923173478943890234092",ͳ�Ƴ�ÿ�����ֳ��ֵĴ���
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
		System.out.println("0������"+a+"��");
		System.out.println("1������"+b+"��");
		System.out.println("2������"+c+"��");
		System.out.println("3������"+d+"��");
		System.out.println("4������"+e+"��");
		System.out.println("5������"+f+"��");
		System.out.println("6������"+g+"��");
		System.out.println("7������"+h+"��");
		System.out.println("8������"+i+"��");
		System.out.println("9������"+j+"��");
	}

}
