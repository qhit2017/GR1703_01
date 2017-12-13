package game;

import java.util.Scanner;

public class game3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("shuru");
		int n = sc.nextInt();
		
		
		out:for(int i=10;i<=n;i++){
			for(int a=i;a>=10;a=a/10){
				if(a%10-a/10%10!=1){
					continue out;
				}
			}
			System.out.println(i);
			
		}
		
		
		
		
		
	}
	
}
