package zuoye1;

import java.util.Scanner;

public class z3 {

	/*
	 * �Ӽ��̽���10�����������������У�Ȼ��ѭ����������������Ԫ��
	 */
      static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		int []arr=new int[10];
		for(int i=0;i<arr.length;i++){
			System.out.println("�������"+(i+1)+"����");
			arr[i]=s.nextInt();
		}
		for(int a=0;a<arr.length;a++){
			System.out.println(arr[a]);
		}
		
	}
}
