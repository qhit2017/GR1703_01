import java.util.Scanner;


public class l5 {
	/*
	 * 5  模拟实现计算器的功能
    要求从键盘输入第一个数
	输入操作符
	输入第二个数
	然后输出结果
    比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15
	比如先输入9，然后输入/，最后输入2 回车之后输出：9/2=4
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("输入第一个数：");
		double a=sc.nextDouble();
		System.out.println("输入操作符：");
		String b=sc.next();
		System.out.println("输入第二个数：");
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
			System.out.println("您输的字我不认识！");
		}

	}
	
	

}
