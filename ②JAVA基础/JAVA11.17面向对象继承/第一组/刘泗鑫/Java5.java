import java.util.Scanner;


public class Java5 {
	
	public static void main(String[] args) {
		
		/*
5  ģ��ʵ�ּ������Ĺ���
    Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15
	����������9��Ȼ������/���������2 �س�֮�������9/2=4
		 * 
		 */
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ������");
		int a = sc.nextInt();
		System.out.println("�������������");
		String c = sc.next();
		System.out.println("������ڶ�������");
		int b = sc.nextInt();
		
		if(c.equals("/")){
			System.out.println(a+c+b+"="+a/b);
		}else if(c.equals("*")){
			System.out.println(a+c+b+"="+a*b);
		}else if(c.equals("+")){
			System.out.println(a+c+b+"="+a+b);
		}else if(c.equals("-")){
			System.out.println(a+c+b+"="+(a-b));
		}else if(c.equals("%")){
			System.out.println(a+c+b+"="+a%b);
		}
		
	}
}
