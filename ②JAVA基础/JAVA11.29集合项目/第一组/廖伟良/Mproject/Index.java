package Mproject;

import java.util.ArrayList;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		 StudentIService service = new StudentServiceImpl();
		 ArrayList<Student>list = new ArrayList<Student>();
		 while(true){
			 System.out.println("�밴��1.����ѧ��2.��ѯ����ѧ��3.����������ѯѧ��4.ɾ��ѧ��5.�޸�ѧ����Ϣ6.�˳�");
		 int n = sc.nextInt();
			 if(n==1){	 
				 System.out.println("������ѧ����Ϣ,����:����,��,15,����");
				 service.insert(list, sc);
			 }
			 else if(n==2){
				 service.findAll(list);
			 }
			 else if(n==3){
				 System.out.println("������ѧ������:");
				 service.findByName(list, sc);
			 }
			 else if(n==4){
				 System.out.println("������ѧ������:");
				 service.delete(list, sc);
			 }
			 else if(n==5){
				 System.out.println("������ѧ�������Լ��µ�����,����:����,15");
				 service.modifyInfo(list, sc);
			 }
			 else{
				 System.out.println("�������");
			 break;
		 }
	}
}
