import java.util.Scanner;


public class A07 {
	/*
	 * �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	 */
	public static void main(String[] args) {
		int arr[] = new int[10];
		Scanner sc = new Scanner(System.in);
		for(int i = 1;i<=10;i++){
			System.out.println("�������"+i+"����:");
			arr[i-1] = sc.nextInt();
		}
		System.out.println("����ǰ:");
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
		System.out.println("������:");
		for(int i:arr){
			System.out.print(i+" ");
		}
	}
}
