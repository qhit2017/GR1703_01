package com.zuoye;

public class y2 {
	/*3 ���. ��֪�ַ���."this is a test of java";

��Ҫ��ִ�����²�����

(1) ͳ�Ƹ��ַ�������ĸs���ֵĴ���

(2) ����"test"���ڵı��

(3) �����ַ������Ƶ�һ���ַ�����Char[] str��.

(4) ���ַ�����ÿ�����ʵĵ�һ����ĸ��ɴ�д�� ���������̨��

(5) �����ַ����ĵ��������

	 * 
	 */
	public static void main(String[] args) {
		String s="this is a test of java";
		int t=0;
		for(int i=1;i>=1;i++){
			if(s.indexOf("s")!=-1){
				s=s.substring(s.indexOf("s")+1, s.length());
				t++;
			}
		}
		System.out.println(t);
	}

}
