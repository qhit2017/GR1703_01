package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import yi.Z3;
import yi.Z4;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San j= new Si();
		while(true){
			System.out.println("�밴����1 ����ѧ�� 2 ��ѯ����ѧ�� 3 ����������ѯѧ����Ϣ 4 ɾ��ѧ�� 5 �޸�ѧ����Ϣ 6 �˳�");
			int i=sc.nextInt();
			if(i==1){
				j.yi(jihe,sc);
			}
			else if(i==2){
				j.er(jihe);
			}
			else if(i==3){
				j.san(jihe,sc);
			}
			else if(i==4){
				j.si(jihe,sc);
			}
			else if(i==5){
				j.wu(jihe, sc);
				
			}
			else if(i==6){
				System.out.println("���˳�");
				break;
			}
			else{
				System.out.println("�˼������������䲻�ԣ����䡣");
			}
			
		}
	}

}
