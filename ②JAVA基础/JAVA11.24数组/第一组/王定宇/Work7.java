import java.util.Scanner;


public class Work7 {

	public static void main(String[] args) {
		//7 �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
		Scanner sc = new Scanner(System.in);
			int[] arr = new int[10];
		for(int i=0; i<arr.length; i++){
			System.out.println("�������"+(i+1)+"����");
			arr[i]=sc.nextInt();
		}
			System.out.println("ԭ����10����");
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i]+" ");
		}
		
			System.out.println();
			System.out.println("�����������");
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
