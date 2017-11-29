package zuoye26;

import java.util.Scanner;

public class zuoye7 {
//从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("请输入"+(a+1)+"个数");
			arr[a]=sc.nextInt();
		}
		for(int b=0;b<arr.length;b++){
			arr[1]=arr[5];
			arr[3]=arr[7];
			System.out.print(arr[b]+"\t");
		}
		
		
		
		
		
		
		
		
	}
}
