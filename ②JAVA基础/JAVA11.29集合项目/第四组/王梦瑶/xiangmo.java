package day28;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmo {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<student> list =new ArrayList<student>();
		studentserve sp=new studentimp();
		while(true){
		System.out.println("1������ѧ����2��ѯ����ѧ������Ϣ��3����ѧ����4�޸�ѧ������Ϣ��5ɾ��ѧ����6�˳�");
		int t=sc.nextInt();			
			if(t==1){
				//���
				sp.add(list, sc);
			}else if(t==2){
				//����
				sp.find(list);
			}else if(t==3){
				//ͨ����������ѧ��
				sp.findname(list, sc);		
			}else if(t==4){
				//�޸�ѧ��
				sp.up(list, sc);
			}else if(t==5){
				//ɾ��ѧ��
				sp.delete(list, sc);
			}else if(t==6){
				System.out.println("�������");
			}else{
				System.out.println("����������������ϱ�׼");
			}
			
		}
	}
	

}
