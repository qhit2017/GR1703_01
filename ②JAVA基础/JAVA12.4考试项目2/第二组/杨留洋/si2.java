package shier;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class si2 {
		public static void main(String[] args) {
			List<ya> list=new ArrayList<ya>();
			
			while (true){
				System.out.println("�����룺1.¼��ͨѶ¼��Ϣ2	.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
				Scanner sc =new Scanner(System.in);
				int run=sc.nextInt();
				if(run==1){
					System.out.println("������ ͨѶ��Ϣ���磺����,��,138");
					String str=sc.next();
				String []arr=str.split(",");
					ya a=new ya();
					a.setName(arr[0]);
					a.setSex(arr[1].charAt(0));
					a.setDh(arr[2]);
					list.add(a);
					System.out.println("��ӳɹ�");
				}else if(run==2){
					System.out.println("��ʾ����ͨѶ¼��Ϣ");
					for(ya i:list){
						i.info();
					}
				}else if(run==3){
					System.out.println("��������");
					String a=sc.next();
					for(ya i:list){
						if(a.equals(i.getName())){
							i.info();
						}
					}
				}else if(run==4){
					System.out.println("�Ա�����");
					String a=sc.next();
					for(ya i:list){
						if(a.charAt(0)==i.getSex()){
							i.info();		
						}
					}
				}else if(run==5){
					System.out.println("�绰����");
					String a=sc.next();
					for(ya i:list){
						if(a.equals(i.getDh())){
							i.info();
						}
					}
				}else if(run==6){
					System.out.println("�������");
					break;
				}
			}
		}
	
	
			
		
}
