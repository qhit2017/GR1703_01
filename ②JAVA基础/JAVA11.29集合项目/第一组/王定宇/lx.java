package lx;

import java.util.ArrayList;
import java.util.Scanner;


public class lx {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		StudentIservice service =new StudentServiceImpl();
		ArrayList<Student> list = new ArrayList<Student>();
		while(true){
			System.out.println("�밴�� 1.����ѧ�� 2.��ѯ����ѧ�� 3.����������ѯѧ����Ϣ 4.ɾ��ѧ�� 5.�޸�ѧ����Ϣ 6.�˳�");
			int n =sc.nextInt();
			if(n==1){
				//��ӷ���
				service.insert(list, sc);
			}else if(n==2){
				//��ѯ����
				service.findAll(list);
			}else if(n==3){
				//����������ѯ
				service.findByName(list, sc);
			}else if(n==4){
				//ɾ��ѧ��
				service.delete(list, sc);
			}else if(n==5){
				//�޸�ѧ����Ϣ
				service.update(list, sc);
			}else if(n==6){
				System.out.println("�������");
				break;
			}
			
			
			
			
		}
		
		
	}
}
