import java.util.Scanner;


public class A07 {
	/*
	 * 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	 */
	public static void main(String[] args) {
		int arr[] = new int[10];
		Scanner sc = new Scanner(System.in);
		for(int i = 1;i<=10;i++){
			System.out.println("请输入第"+i+"个数:");
			arr[i-1] = sc.nextInt();
		}
		System.out.println("交换前:");
		for(int i:arr){
			System.out.print(i+" ");
		}
		int a = arr[1];
		arr[1] = arr[5];
		arr[5] = a;
		
		int b = arr[3];
		arr[3] = arr[7];
		arr[7] = b;
		System.out.println();
		System.out.println("交换后:");
		for(int i:arr){
			System.out.print(i+" ");
		}
	}
}
