import java.util.Scanner;


public class Work7 {

	public static void main(String[] args) {
		//7 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
		Scanner sc = new Scanner(System.in);
			int[] arr = new int[10];
		for(int i=0; i<arr.length; i++){
			System.out.println("请输入第"+(i+1)+"个数");
			arr[i]=sc.nextInt();
		}
			System.out.println("原来的10个数");
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i]+" ");
		}
		
			System.out.println();
			System.out.println("交换后的数：");
			int a =arr[1];
			arr[1]=arr[5];
			arr[5]=a;
			
			int b =arr[3];
			arr[3]=arr[7];
			arr[7]=b;
		for(int x =0; x<arr.length; x++){
			System.out.print(arr[x]+" ");
		}	
		
		
		
	}
}
