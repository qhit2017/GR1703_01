package com.wan;

public class Y23 {
	//定义一个字符串 String str = "1290812479120741"; 求各个数字出现的次数
	public static void main(String[] args) {
		String str = "1290812479120741";
		String[]sz=str.split("");
		for(int i=0;i<=9;i++){
			int sum=0;
			for(String j:sz){
				if(i==Integer.parseInt(j)){
					sum++;
				}
				
			}
			System.out.println(i+"出现的次数是："+sum);
		}
		
		
	}

}
