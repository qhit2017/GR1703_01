import java.util.Scanner;


public class l5 {
	/*
	 * 5  ģ��ʵ�ּ������Ĺ���
    Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15
	����������9��Ȼ������/���������2 �س�֮�������9/2=4
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�����һ������");
		double a=sc.nextDouble();
		System.out.println("�����������");
		String b=sc.next();
		System.out.println("����ڶ�������");
		double c=sc.nextDouble();
		double d;
		if(b.equals("*")){
			d=a*c;
			System.out.println(d);
		}else if(b.equals("/")){
			d=a/c;
			System.out.println(d);
		}else if(b.equals("+")){
			d=a+c;
			System.out.println(d);
		}else if(b.equals("-")){
			d=a-c;
			System.out.println(d);
		}else{
			System.out.println("��������Ҳ���ʶ��");
		}

	}
	
	

}
