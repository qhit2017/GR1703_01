import java.util.Scanner;


public class Demo5 {
	
	/*
	 * 5 �Ӽ�������10�����������5����
	 */

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
			arr[i-1] = sc.nextInt();
		}
		
		System.out.println("�����5�����ǣ�");
		for(int j = 5;j<arr.length;j++){
			System.out.print(arr[j]+"\t");
		}
		
	}
	
}
