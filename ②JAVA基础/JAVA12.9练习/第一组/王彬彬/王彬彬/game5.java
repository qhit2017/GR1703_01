package game;

import java.util.Scanner;

public class game5 {
//�Ӽ��̽���n,���1~n֮�����7�Ҳ�����8���ܱ�3������ż��
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		System.out.println("shiru");
		int n=sc.nextInt();
	out:	for(int i=0;i<=n;i=i+2){
			for(int b=i;b>=1;b=b/10){
				if(b%10==8){
					continue out;
				}
			}
			for(int c=i;c>=1;c=c/10){
				if(c%10==7&&i%3==0){
					System.out.println(i);
					break;
				}
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
