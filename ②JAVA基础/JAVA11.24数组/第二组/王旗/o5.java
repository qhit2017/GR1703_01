package Sunday;

import java.util.Scanner;
//5 �Ӽ�������10�����������5����
public class o5 {
public static void main(String[] args) {
	int []arr= new int[10];
	
	Scanner sc=new Scanner(System.in);
	
	for(int a=1;a<=10;a++){
		System.out.println("�������"+a+"����");
	    arr[a-1]= sc.nextInt();
	}
	for(int a=5;a<arr.length;a++){
		System.out.println(arr[a]);
		
	}
}
}
