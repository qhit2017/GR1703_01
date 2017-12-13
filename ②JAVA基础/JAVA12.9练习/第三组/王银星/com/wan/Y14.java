package com.wan;

public class Y14 {
	//ÇëÊä³ö1~10µÄºÍ
	public static void main(String[] args) {
		int ji=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				ji=ji*i;
			}
		}
		System.out.println(ji);
	}

}
