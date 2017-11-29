import java.util.Scanner;


public class Demo5 {
	
	/*
	 * 5 从键盘输入10个数，输出后5个数
	 */

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1] = sc.nextInt();
		}
		
		System.out.println("数组后5个数是：");
		for(int j = 5;j<arr.length;j++){
			System.out.print(arr[j]+"\t");
		}
		
	}
	
}
