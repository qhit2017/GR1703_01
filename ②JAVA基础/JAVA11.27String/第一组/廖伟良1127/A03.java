package hw1128;

public class A03 {
	/*
	 * ���. ��֪�ַ�����"this is a test of java".
	(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���
	 * (2) ����"test"���ڵı��

(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.

(4) ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��

(5) �����ַ����ĵ��������

(6) �����ַ���ת����һ���ַ������飬Ҫ��ÿ������Ԫ�ض���һ���������Ӣ�ĵ���,�����������̨
	 * 
	 */
	
	public static void main(String[] args) {
		String str="this is a test of java";
		System.out.println("�ڶ�С�⣺");
		System.out.println("test���ڵı����"+str.indexOf("test"));
		System.out.println("��һС�⣺");
		int a=0;
		for(int i=0;i<str.length();i++){
			if(str.indexOf("s")>=0){
				str=str.substring(str.indexOf("s")+1,str.length());
				a++;
			}
		}
		System.out.println("��ĸs���ֵĴ�����"+a);
		System.out.println("����С�⣺");
		char str2[]=new char[str.length()];
		for(int i=0;i<str.length();i++){
			str2[i]=str.charAt(i);
		}
		System.out.println("����С�⣺");
		str2[0]='T';
		str2[5]='I';
		str2[8]='A';
		str2[10]='T';
		str2[15]='O';		
		str2[18]='J';		
		for(int b=0;b<str2.length;b++){
			
			System.out.print(str2[b]);
		}
		System.out.println("����С�⣺");
		for(int c=str2.length-1;c>=0;c++){
			System.out.println(str2[c]);
		}
		
		
		
		
		
	}

}
