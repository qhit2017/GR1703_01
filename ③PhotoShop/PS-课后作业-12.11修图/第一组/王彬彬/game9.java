package game;

import java.util.Scanner;

//�Ӽ��̽���n,���1~n֮�����7�Ҳ�����8���ܱ�3������ż��
public class game9 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int n=sc.nextInt();
	out	:for(int a=0;a<=n;a=a+2){
			for(int b=a;b>0;b=b/10){
				if(b%10==8){
					continue out;
				}
			}
			for(int c=a;c>0;c=c/10){
				if(c%10==7&&a%3==0){
					System.out.println(a);
				}
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
