package Dog;

import java.util.Scanner;

//	5  ģ��ʵ�ּ������Ĺ���
//	Ҫ��Ӽ��������һ����
//	���������
//	����ڶ�����
//	Ȼ��������
//	����������7��Ȼ������+���������8 �س�֮�������7+8=15
//	����������9��Ȼ������/���������2 �س�֮�������9/2=4

public class ZuoYe {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
			System.out.println("�������һ����");
		int shu =sc.nextInt();
		
			System.out.println("�����������");
		char fu =sc.next().charAt(0);
		
			System.out.println("������ڶ�����");
		int shu2 =sc.nextInt();
		
		switch(fu){
		case '+':{
			System.out.println(shu+"+"+shu2+"="+(shu+shu2));
		}
		case '-':{
			System.out.println(shu+"-"+shu2+"="+(shu-shu2));
		}
		case '*':{
			System.out.println(shu+"*"+shu2+"="+(shu*shu2));
		}
		case '/':{
			System.out.println(shu+"/"+shu2+"="+(shu/shu2));
		}
		
		
		
		
		}	
	}
}
