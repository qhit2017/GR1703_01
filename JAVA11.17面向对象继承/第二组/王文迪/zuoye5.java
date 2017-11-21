import java.util.Scanner;


public class zuoye5 {
	
	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个数：");
		int a = sc.nextInt();
		System.out.println("请输入操作符：");
		String c = sc.next();
		System.out.println("请输入第二个数：");
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
