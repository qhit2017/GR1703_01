package com.kaoti1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		StudentIservice service=new StudentIserviceImpl();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("�����룺1¼�뿼���ĸ߿���Ϣ2��ʾ���п�����Ϣ3��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4�˳�����");
			int n= sc.nextInt();
			if(n==1){
				service.tianjia(list, sc);
			}else if(n==2){
				service.findall(list, sc);
			}else if(n==3){
				service.findmax(list, sc);
			}else if(n==4){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("�밴��ʾ���룡");
			}
		}
	}

}
