package com.Wjunhui;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Junhui {
	
	public static void main(String[] args) {
		List<Student> list = new ArrayList<Student>();
		Scanner sc = new Scanner(System.in);
		Jiekou wjh = new Fangfa();
		while(true){
		System.out.println("������: 1.��Ӽ�ѧ����Ϣ  2.��ѯ����ѧ����Ϣ  3.������������ѧ����Ϣ  4.ɾ��ѧ��  5.�޸�ѧ����Ϣ  6.�˳�");
			int i = sc.nextInt();
			if(i==1){
				wjh.zengjia(list, sc);
			}else if(i==2){
				wjh.suoyou(list);
			}else if(i==3){
				wjh.chaxun(list, sc);
			}else if(i==4){
				wjh.shanchu(list, sc);
			}else if(i==5){
				wjh.xiugai(list, sc);
			}else if(i==6){
				System.out.println("������ѯ.");
				break;
			}else{
				System.out.println("��������.");
			}
		}
		
	}

}
