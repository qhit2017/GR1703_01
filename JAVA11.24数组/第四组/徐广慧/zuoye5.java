package zuoye26;

import java.util.Scanner;

public class zuoye5 {
//从键盘输入10个数，输出后5个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a =1;a<=arr.length;a++){
			System.out.println("请输入第"+a+"个数");
			arr[a-1]=sc.nextInt();
		}
		for(int b=5;b<arr.length;b++){
			System.out.println(arr[b]);
		}
		
	}
	
	
	
}
