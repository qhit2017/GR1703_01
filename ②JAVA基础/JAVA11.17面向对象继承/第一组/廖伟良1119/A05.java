import java.util.Scanner;


public class A05 {
	/*ģ��ʵ�ּ������Ĺ���
	 *Ҫ��Ӽ��������һ����
	 * ���������
	 * ����ڶ�����
	 * Ȼ��������
	 * ����������7��Ȼ������+���������8�س�֮�������7+8=15
	 * ����������9��Ȼ������/���������2�س�֮�����:9/2=4	
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ����:");
		int a1 = sc.nextInt();
		String str =null;
		System.out.println("���������:");
		str = sc.next();
		System.out.println("������ڶ�����:");
		int a2 = sc.nextInt();
		System.out.println(a1+str+a2+"="+(a1+a2));
	}
}
