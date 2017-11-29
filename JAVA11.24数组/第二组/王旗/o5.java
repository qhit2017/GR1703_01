package Sunday;

import java.util.Scanner;
//5 从键盘输入10个数，输出后5个数
public class o5 {
public static void main(String[] args) {
	int []arr= new int[10];
	
	Scanner sc=new Scanner(System.in);
	
	for(int a=1;a<=10;a++){
		System.out.println("请输入第"+a+"个数");
	    arr[a-1]= sc.nextInt();
	}
	for(int a=5;a<arr.length;a++){
		System.out.println(arr[a]);
		
	}
}
}
