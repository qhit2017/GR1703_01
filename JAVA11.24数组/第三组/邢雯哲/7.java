package zuoye1;

import java.util.Scanner;

public class z7 {
/*
 * 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，
 * 以及交换后的10个数
 */
	public static void main(String[] args) {
		//从键盘接收一个数
		Scanner s=new Scanner(System.in);
		//从键盘输入10个数
		int []arr=new int[10];
		//给她赋值
		for(int i=0;i<arr.length;i++){
			//输出
			System.out.println("请输入第"+(i+1)+"个数");
			//赋值
			arr[i]=s.nextInt();
			
		}
		for(int x=0;x<arr.length;x++){
			System.out.print(arr[x]);
			
		}
		int c=arr[1];
		arr[1]=arr[5];
		arr[5]=c;
		
		int t=arr[3];
		arr[3]=arr[7];
		arr[7]=t;
		System.out.println();
		for(int y=0;y<arr.length;y++){
			System.out.print(arr[y]);
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
	}
}
