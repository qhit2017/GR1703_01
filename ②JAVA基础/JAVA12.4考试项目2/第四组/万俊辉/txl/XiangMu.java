package com.txl;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class XiangMu {
	
	public static void main(String[] args) {
		
		List<Txl> list = new ArrayList<Txl>();
		Scanner sc = new Scanner(System.in);
		Jiekou a = new Fangfa();
		while(true){
			System.out.println("1.¼����Ϣ 2.��ʾ�����û���Ϣ 3.�������� 4.�Ա����� 5.�绰���� 6.�˳�");
			int sum = sc.nextInt();
			if(sum==1){
				a.cunchu(list, sc);
			}else if(sum==2){
				a.bianli(list);
			}else if(sum==3){
				a.xingming(list, sc);
			}else if(sum==4){
				a.xingbie(list, sc);
			}else if(sum==5){
				a.shoujihao(list, sc);
			}else if(sum==6){
				System.out.println("ллʹ�ã�");
				break;
			}else{
				System.out.println("�Բ�����������������������롣");
			}
		}
		
	}

}
