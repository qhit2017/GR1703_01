package Work;

import java.util.Scanner;

public class work5 {

	public static void main(String[] args) {
		
		/*
		 * 编程题a:

			从键盘接收两个数，输出较大的那个数

		 */
		
		Scanner sc = new Scanner(System.in);
		int a= sc.nextInt();
		int b= sc.nextInt();
		
		if(a>b){
			System.out.println(a+"大");
		}else{
			System.out.println(b+"大");
		}
		
		
	}
}
