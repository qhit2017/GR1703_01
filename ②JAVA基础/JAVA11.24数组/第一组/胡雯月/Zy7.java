import java.util.Scanner;


public class Zy7 {
	//7 �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
    public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int a=0;a<10;a++){
			System.out.println("�����ʮ����");
			arr[a]=sc.nextInt();
			
		}
		System.out.println("���ԭ����ʮλ��");
		for(int b=0;b<arr.length;b++){
			System.out.print(arr[b]+"\t");
		}
		System.out.println();
		System.out.println("�������ʮλ��");
		  int w=arr[1];
		  arr[1]=arr[5];
		  arr[5]=w;
		  int d=arr[3];
		  arr[3]=arr[7];
		  arr[7]=d;
		  for(int c=0;c<arr.length;c++){
		  System.out.print(arr[c]+"\t");
    	
    	
    	
    	
    	
    	
    	
		}	
	}
    }
