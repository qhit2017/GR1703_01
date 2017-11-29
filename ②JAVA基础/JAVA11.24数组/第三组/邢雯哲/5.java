package zuoye1;

import java.util.Scanner;

public class z5 {
	/*
	 * 从键盘输入10个数，输出后5个数
	 */

public static void main(String[] args) {
	
	Scanner s=new Scanner(System.in);
	int []arr=new int[10];
	for(int t=0;t<arr.length;t++){
		System.out.println("从键盘输出第"+(t+1)+"个数");
		arr[t]=s.nextInt();
	}
	for(int b=5;b<arr.length;b++){
		System.out.println(arr[b]);
	}
	
	
	
	
	
}
}
