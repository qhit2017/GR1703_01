package zuoye26;

import java.util.Scanner;

public class zuoye3 {
//�Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[] arr=new int[10];
		for(int a =1;a<=10;a++){
			System.out.println("�������"+a+"����");
			arr[a-1]=sc.nextInt();
		}
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
		}
		
		
		
	
	
	}
}
