package com.lizhixin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		service ser =new serviceIM(); 
		List<People> list = new ArrayList<People>();
		Scanner  sc =new Scanner(System.in);
		while(true){
		System.out.println("1���ͨѶ¼��Ϣ2��ѯ������Ϣ3����������ѯ4�����Ա��ѯ5���ݵ绰�����ѯ6�˳�");
		int n =sc.nextInt();
		if(n==1){
			ser.Addto(list, sc);//�����Ϣ
		}else if(n==2){
			ser.Inquireall(list);//��ѯȫ��
		}else if(n==3){
			ser.queryName(list, sc);//��ѯ����
		}else if(n==4){
			ser.querySex(list, sc);//��ѯ�Ա�
		}else if(n==5){
			ser.queryNum(list, sc);//��ѯ�绰����
		}else if(n==6){
			System.out.println("�˳��ɹ���");
		}else{
			System.out.println("��������������������룺");
		}
		}
	}
	
	
}
