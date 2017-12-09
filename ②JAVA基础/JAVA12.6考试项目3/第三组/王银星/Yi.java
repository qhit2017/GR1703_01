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
			System.out.println("1   新增商品；2   进货；3   销售；4   参看库存；5   退出功能");
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
				System.out.println("退出成功，谢谢使用！");
				break;
			}else if(i==6){
				y.liu(arr);
			}
			
		}
		
		
		
	}

}
