package zuoye26;

import java.util.Scanner;

public class zuoye5 {
//�Ӽ�������10�����������5����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a =1;a<=arr.length;a++){
			System.out.println("�������"+a+"����");
			arr[a-1]=sc.nextInt();
		}
		for(int b=5;b<arr.length;b++){
			System.out.println(arr[b]);
		}
		
	}
	
	
	
}
