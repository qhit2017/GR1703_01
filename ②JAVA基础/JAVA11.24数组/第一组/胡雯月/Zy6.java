import java.util.Scanner;


public class Zy6 {
	//6 �Ӽ�������10���������Ӵ�С����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int a=0;a<10;a++){
			System.out.println("����ʮ����");
			arr[a]=sc.nextInt();
		}
		
			for(int b=0;b<arr.length;b++){
				for(int c=b+1;c<arr.length;c++)
					if(arr[b]<arr[c]){
				    int t=arr[b];
				    arr[b]=arr[c];
				    arr[c]=t;
					}
				    
				    System.out.print(arr[b]+"\t");
			}
		}      
		
		
		
		
		
		
	}


