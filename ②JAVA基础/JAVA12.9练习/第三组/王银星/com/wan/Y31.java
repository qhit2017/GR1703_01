package com.wan;

public class Y31 {
	//��ӡ�žų˷����������3*3=9
	
	public static void main(String[] args) {
		for(int i=1;i<=9;i++){
			out: for(int j=1;j<=i;j++){
				if(j==3){
					continue out;
				}
				System.out.print(j+"*"+i+"="+j*i+"\t");
			}
			System.out.println();
		}
	}
		

}
