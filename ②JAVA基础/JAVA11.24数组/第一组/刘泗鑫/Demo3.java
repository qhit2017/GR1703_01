import java.util.Scanner;


public class Demo3 {
	
	/*
	 * 3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
	 */
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int i =1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
			arr[i-1] = sc.nextInt();
		}
		
		System.out.println("������������ǣ�");
		for(int j =0;j<arr.length;j++){
			System.out.print(arr[j]+"\t");
			
		}
	}
}
