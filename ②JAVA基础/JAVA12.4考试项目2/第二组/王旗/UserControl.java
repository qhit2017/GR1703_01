package homework;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UserControl {
	public static void main(String[] args) {
		System.out.println("������������ֽ������²�����1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
		Scanner input=new Scanner(System.in);
		List<CommunicationInfor> list=new ArrayList<CommunicationInfor>();
		method m=new DoMethod();
		while(true){
			int n=input.nextInt();
			if(n==1){
			m.Addpeople(list, input);
			}else if(n==2){
				m.findAll(list);
			m.findAll(list);			
			}else if(n==3){
				m.findbyname(list, input);
			}else if(n==4){
			m.findbysex(list, input);
			}else if(n==5){
			m.findbynumber(list, input);
			}else if(n==6){
				System.out.println("�˳���ɣ�");
				break;
			}else{
				System.out.println("������Ĳ������淶���������ʾ������");
			}
			
		}
	}

}
