package Dog;

import java.util.Scanner;

//	5  模拟实现计算器的功能
//	要求从键盘输入第一个数
//	输入操作符
//	输入第二个数
//	然后输出结果
//	比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15
//	比如先输入9，然后输入/，最后输入2 回车之后输出：9/2=4

public class ZuoYe {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
			System.out.println("请输入第一个数");
		int shu =sc.nextInt();
		
			System.out.println("请输入操作符");
		char fu =sc.next().charAt(0);
		
			System.out.println("请输入第二个数");
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
