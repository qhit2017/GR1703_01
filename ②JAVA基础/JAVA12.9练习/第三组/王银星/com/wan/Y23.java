package com.wan;

public class Y23 {
	//����һ���ַ��� String str = "1290812479120741"; ��������ֳ��ֵĴ���
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
			System.out.println(i+"���ֵĴ����ǣ�"+sum);
		}
		
		
	}

}
