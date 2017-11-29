package Work;

import java.util.Scanner;

public class Work7 {
	public static void main(String[] args) {
		//7 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
		
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
				
		for(int i=0;i<arr.length;i++){
			System.out.println("请输入第"+(i+1)+"数");
			arr[i]=sc.nextInt();
			}
		for(int i=0;i<arr.length;i++){		
				System.out.print(arr[i]+" ");	
		}
		int m=arr[arr.length-8];
		arr[arr.length-9]=arr[arr.length-5];
		arr[arr.length-5]=m;
		int n=arr[arr.length-7];
		arr[arr.length-7]=arr[arr.length-3];
		arr[arr.length-3]=n;
		System.out.println("交换后：");
		for(int i=0;i<arr.length;i++){		
			System.out.print(arr[i]+" ");	
	}
		
	}

}
