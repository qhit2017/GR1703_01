package game;

import java.util.Scanner;

//从键盘接收n,输出1~n之间包含7且不包含8且能被3整除的偶数
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
