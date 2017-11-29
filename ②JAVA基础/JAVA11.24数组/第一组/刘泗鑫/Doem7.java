import java.util.Scanner;


public class Doem7 {
	
	/*
	 * 7 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	 */

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int a = 1;a<=arr.length;a++){
			System.out.println("请输入第"+a+"个数：");
			arr[a-1] = sc.nextInt();
		}
		
		System.out.println("原数组是：");
		for(int i = 0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		
		System.out.println();
		System.out.println("交换后的数组是：");
		for(int j = 0;j<arr.length-1;j++){
			for(int b=j+1;b<arr.length;b++){
				if(arr[j]!=arr[b]){
					int t =arr[1];
					arr[1]=arr[5];
					arr[5]=t;
					int n = arr[3];
					arr[3]=arr[7];
					arr[7]=n;
					
				}
				
			}
		}
		for(int c = 0;c<arr.length;c++){
			System.out.print(arr[c]+"\t");
			
		}
		
	}
	
}
