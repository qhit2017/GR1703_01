package Sunday;

import java.util.Scanner;

//3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
public class o3 {
public static void main(String[] args) {
	int []arr=new int[10]; 
	Scanner sc=new Scanner(System.in);
	for(int a=1;a<=arr.length;a++){
		System.out.println("�����"+a+"����:");
		arr[a-1]= sc.nextInt();
	
	}
	for(int i=0;i<arr.length;i++){
		System.out.println(arr[i]);
	}

	
}
}