import java.util.Scanner;



public class A03 {
/*
 * ��������С��x,y,z��������������ɴ�С�����
 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ��С��:");
		double x = sc.nextDouble();
		System.out.println("������ڶ���С��:");
		double y = sc.nextDouble();
		System.out.println("�����������С��:");
		double z = sc.nextDouble();
		double v;
		if(z>y){
			v=z;
			z=y;
			y=v;
		}
		if(z>x){
			v=x;
			x=z;
			z=v;
		}
		if(y>x){
			v=y;
			y=x;
			x=v;
		}
		System.out.println(x+","+y+","+z);
	}
}
