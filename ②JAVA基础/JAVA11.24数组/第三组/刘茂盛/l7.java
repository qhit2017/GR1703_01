import java.util.Scanner;


public class l7 {
	/*
	 * 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换
	 * ，输出原来的10个数，以及交换后的10个数
	 * 
	 */
	public static void main(String[] args) {
		int[]arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		System.out.println("输出原来的数：");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println("交换后的数是：");
		for(int i=0;i<arr.length;i++){
			int t=arr[1];
			arr[1]=arr[5];
			arr[5]=t;
			int a=arr[3];
			arr[3]=arr[7];
			arr[7]=a;
			System.out.print(arr[i]+"\t");
		}
		
		
	}

}
