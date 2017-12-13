package zuoye;

import java.util.Scanner;

public class Zy5 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("请输入一个数：");
	int   n =sc.nextInt();
	
	int  t=0;
	for(int i=1;i<=n;i++){
		if(i%3==0){
			t++;
		}
	}
	System.out.println(t);








}




}
