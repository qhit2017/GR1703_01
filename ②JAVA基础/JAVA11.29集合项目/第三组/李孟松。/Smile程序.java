package ��ҵ3;

import java.awt.List;
import java.util.ArrayList;
import java.util.Scanner;

public class Smile���� {
	
	//�밴�� 1 ����ѧ����2 ��ѯ����ѧ����3 ����������ѯѧ����Ϣ��4 ɾ��ѧ����5 �޸�ѧ����Ϣ��6 �˳���
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<Demo>list=new ArrayList<Demo>();
		DemoIdemo t=new Demoismile();
		while(true){
			System.out.println("�밴�� 1 ����ѧ����2 ��ѯ����ѧ����3 ����������ѯѧ����Ϣ��4 ɾ��ѧ����5 �޸�ѧ����Ϣ��6 �˳���");
			int n=sc.nextInt();
			if(n==1){
				//����ѧ��
				t.zhengjia(list, sc);
				
			}else if(n==2){
				//��ѯ����ѧ��
				t.chaxun(list);
				
			}else if(n==3){
				//����������ѯѧ����Ϣ
				t.shuchu(list, sc);
				
			}else if(n==4){
				//ɾ��ѧ��
				t.delete(list, sc);
				
			}else if(n==5){
				//�޸�ѧ����Ϣ
				t.xiugai(list, sc);
				
				
			}else if(n==6){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
		
	}
	

}
