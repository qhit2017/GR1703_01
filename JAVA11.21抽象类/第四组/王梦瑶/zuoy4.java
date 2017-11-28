package com.zuoy21;

public class zuoy4 {
	public static void main(String[] args) {
		a:for(int t=0;t<=10000;t++){
			if(t>=10&&t<100&&t/10==3){
				System.out.println(t);
			}else if(t>=100&&t<1000&&t/100==3){
				System.out.println(t);
			}else if(t>=1000&&t<10000&&t/1000==3){
				System.out.println(t);
			}else if (t==3){
				System.out.println(t);
			}
			
		}
	}

}
