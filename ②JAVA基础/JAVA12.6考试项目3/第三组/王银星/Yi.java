package com.ketang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		List<Er>arr=new ArrayList<Er>();
		San y=new Si();
		while(true){
			System.out.println("1   ������Ʒ��2   ������3   ���ۣ�4   �ο���棻5   �˳�����");
			int i=sc.nextInt();
			if(i==1){
				y.yi(jihe, sc);
			}else if(i==2){
				y.er(jihe, sc);
			}else if(i==3){
				y.san(jihe, sc);
			}else if(i==4){
				y.si(jihe);
			}else if(i==5){
				System.out.println("�˳��ɹ���ллʹ�ã�");
				break;
			}else if(i==6){
				y.liu(arr);
			}
			
		}
		
		
		
	}

}
