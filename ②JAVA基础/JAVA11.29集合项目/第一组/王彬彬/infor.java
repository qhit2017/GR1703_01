package com.infor;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class infor {

	public static  void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);			
		List<Student>list1=new ArrayList<Student>();
		StudentImp ser=new StudentImp();
		
		for(int a =1;a==1;){
			System.out.println("�����룺");
			System.out.println("1�����ѧ����Ϣ"+"2���鿴����ѧ����Ϣ"+"3����ѯĳλѧ����Ϣ"+"4��ɾ��ѧ����Ϣ"+"5���޸�ѧ����Ϣ"+"6���˳�����");
			String num=sc.next();
			if(num.equals("1")){
				//���ѧ����Ϣ
				ser.insert(sc, list1);
			}else if(num.equals("2")){
				//�鿴����ѧ����Ϣ
				ser.findall(list1);
			}else if(num.equals("3")){
				//��ѯĳλѧ����Ϣ
					ser.findone(list1,sc);
			}else if(num.equals("4")){
				//ɾ��ѧ����Ϣ
				ser.deleteone(list1,sc);
			}else if(num.equals("5")){
				//�޸�ѧ����Ϣ
				ser.changeone(list1, sc);
			}else if(num.equals("6")){
				System.out.println("�������");
				break ;
			}else{
				System.out.println("���������������,���������룡����");
				continue;
			}
			}
		
		
		
		
		
		
		
}
	
	}
	

