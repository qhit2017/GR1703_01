package comtsinghua;

import java.util.Scanner;

public class work3 {
	public static void main(String[] args) {
		
		/*
		 * 3、输入三个小数x,y,z，请把这三个数由大到小输出。
		 */
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个小数：");
		double a=sc.nextDouble();
		System.out.println("请输入第二个小数：");
		double b=sc.nextDouble();
		System.out.println("请输入第三个小数：");
		double c=sc.nextDouble();
		double max1=0;
		double max=0;
		double min=0;
		
		if(a>b){
			max=a;
			if(max>c){
				max=max;			
				if(c>b){
					max1=c;
					min=b;
				}else{
					max1=b;
					min=c;
				}
			}else{
				max=c;
				max1=a;
				min=b;
			}
		}else {
			max=b;
			if(max>c){
				max=max;
				if(a>c){
					max1=a;
					min=c;								
				}else{
					max1=c;
					min=a;
				}
			}else{
				max=c;
				max1=b;
				min=a;
			}
			
		}			
	System.out.println(max+">"+max1+">"+min);
		
	}

}
