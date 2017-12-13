package Work;

import java.util.Scanner;

public class work {

	public static void main(String[] args) {
		/*
		 * 编程题a:

			从键盘接收n，判断n是否能被3整除

		 */
		
		Scanner sc = new Scanner(System.in);
		int n =sc.nextInt();
		if(n%3==0){
			System.out.println(n+"能被3整除");
		}else{
			System.out.println(n+"不能被3整除");
		}
		
		
		
	}
	
}
