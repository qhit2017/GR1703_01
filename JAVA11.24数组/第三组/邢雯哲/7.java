package zuoye1;

import java.util.Scanner;

public class z7 {
/*
 * �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10������
 * �Լ��������10����
 */
	public static void main(String[] args) {
		//�Ӽ��̽���һ����
		Scanner s=new Scanner(System.in);
		//�Ӽ�������10����
		int []arr=new int[10];
		//������ֵ
		for(int i=0;i<arr.length;i++){
			//���
			System.out.println("�������"+(i+1)+"����");
			//��ֵ
			arr[i]=s.nextInt();
			
		}
		for(int x=0;x<arr.length;x++){
			System.out.print(arr[x]);
			
		}
		int c=arr[1];
		arr[1]=arr[5];
		arr[5]=c;
		
		int t=arr[3];
		arr[3]=arr[7];
		arr[7]=t;
		System.out.println();
		for(int y=0;y<arr.length;y++){
			System.out.print(arr[y]);
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
	}
}
