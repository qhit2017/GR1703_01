import java.util.Scanner;


public class zuoye5 {
	
	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);
		System.out.println("�������һ������");
		int a = sc.nextInt();
		System.out.println("�������������");
		String c = sc.next();
		System.out.println("������ڶ�������");
		int b = sc.nextInt();
		
		if(c.equals("+")){
			System.out.println(a+c+b+"="+a+b);
		}else if(c.equals("*")){
			System.out.println(a+c+b+"="+a*b);
		}else if(c.equals("/")){
			System.out.println(a+c+b+"="+a/b);
		}else if(c.equals("%")){
			System.out.println(a+c+b+"="+a%b);
		}else if(c.equals("-")){
			System.out.println(a+c+b+"="+(a-b));
		}
		
	}

}
