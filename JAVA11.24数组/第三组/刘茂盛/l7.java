import java.util.Scanner;


public class l7 {
	/*
	 * �Ӽ�������10����������2�����6����������4�����8������
	 * �����ԭ����10�������Լ��������10����
	 * 
	 */
	public static void main(String[] args) {
		int[]arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�����"+i+"������");
			arr[i-1]=sc.nextInt();
		}
		System.out.println("���ԭ��������");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println("����������ǣ�");
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
