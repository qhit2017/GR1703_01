package Work;

import java.util.Scanner;

public class Work7 {
	public static void main(String[] args) {
		//7 �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
		
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
				
		for(int i=0;i<arr.length;i++){
			System.out.println("�������"+(i+1)+"��");
			arr[i]=sc.nextInt();
			}
		for(int i=0;i<arr.length;i++){		
				System.out.print(arr[i]+" ");	
		}
		int m=arr[arr.length-8];
		arr[arr.length-9]=arr[arr.length-5];
		arr[arr.length-5]=m;
		int n=arr[arr.length-7];
		arr[arr.length-7]=arr[arr.length-3];
		arr[arr.length-3]=n;
		System.out.println("������");
		for(int i=0;i<arr.length;i++){		
			System.out.print(arr[i]+" ");	
	}
		
	}

}
