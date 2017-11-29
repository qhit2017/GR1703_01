import java.util.Scanner;


public class Work3 {

	public static void main(String[] args) {
		//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		for(int i=0; i<arr.length; i++){
			System.out.println("请输入第"+(i+1)+"个数");
			arr[i] = sc.nextInt();
		}
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i]);
		}
		
		
		
	}
}
