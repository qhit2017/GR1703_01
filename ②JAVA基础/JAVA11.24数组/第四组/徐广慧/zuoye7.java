package zuoye26;

import java.util.Scanner;

public class zuoye7 {
//�Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("������"+(a+1)+"����");
			arr[a]=sc.nextInt();
		}
		for(int b=0;b<arr.length;b++){
			arr[1]=arr[5];
			arr[3]=arr[7];
			System.out.print(arr[b]+"\t");
		}
		
		
		
		
		
		
		
		
	}
}
