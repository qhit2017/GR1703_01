package com.kaoshijuan2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San s=new Si();
		while(true){
			System.out.println("�����룺1������ѧ����2����ѯ����ѧ����3��������������ѧ����4��"
					+ "�����Ա���ң�5������������ң�6���˳���");
			int shuru=sc.nextInt();
			if(shuru==1){
				s.yi(jihe, sc);
			}if(shuru==2){
				s.er(jihe, sc);
			}if(shuru==3){
				s.san(jihe, sc);
			}if(shuru==4){
				s.si(jihe, sc);
			}if(shuru==5){
				s.wu(jihe, sc);
			}if(shuru==6){
				System.out.println("�������˳���");
				break;
			}
		}
	}

}
