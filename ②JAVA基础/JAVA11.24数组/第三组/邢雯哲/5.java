package zuoye1;

import java.util.Scanner;

public class z5 {
	/*
	 * �Ӽ�������10�����������5����
	 */

public static void main(String[] args) {
	
	Scanner s=new Scanner(System.in);
	int []arr=new int[10];
	for(int t=0;t<arr.length;t++){
		System.out.println("�Ӽ��������"+(t+1)+"����");
		arr[t]=s.nextInt();
	}
	for(int b=5;b<arr.length;b++){
		System.out.println(arr[b]);
	}
	
	
	
	
	
}
}
