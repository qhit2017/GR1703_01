package com.Kaoshi1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.gongchen.Student;

public class Index {

	public static void main(String[] args) {
		Scanner  sc = new Scanner(System.in);
		List<StudentiInfo> list = new ArrayList<StudentiInfo>();
		
		while(true){
			System.out.println("1.¼�뿼���߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�4.�˳�");
			int a = sc.nextInt();
			if(a==1){
				System.out.println("¼�뿼���߿���Ϣ  ����,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�  ���磺����,1234,120,102,90");
				String str = sc.next();
				StudentiInfo si = new StudentiInfo();
				String[] arr= str.split(",");
				si.setName(arr[0]);
				si.setNumber(arr[1]);
				si.setYuwenchengji(Integer.parseInt(arr[2]));
				si.setShuxuechengji(Integer.parseInt(arr[3]));
				si.setYingyuchengji(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("��ӳɹ���");
				
			}else if(a==2){
				System.out.println("��ʾ���п�����Ϣ");
				for(StudentiInfo i:list){
					i.info();
				}
				
			}else if(a==3){
				System.out.println("��ѯ��߷�");
				while(true){
					System.out.println("1.����ܳɼ�2.������߷�3.��ѧ��߷�4.Ӣ����߷�5.�˳�");
					int b = sc.nextInt();
					if(b==1){
						int max=0;
						for(StudentiInfo i:list){
							if(max<i.getTotal()){
								max=i.getTotal();
							}
						}
						System.out.println("��߷���"+max);
					}else if(b==2){
						int yuwenmax = 0;
						for(StudentiInfo si:list){
							if(yuwenmax<si.getYuwenchengji()){
								yuwenmax=si.getYingyuchengji();
							}
						}
						
						System.out.println("������߷�"+yuwenmax);
					}else if(b==3){
						int shuxuemax=0;
						for(StudentiInfo si:list){
							if(shuxuemax<si.getShuxuechengji()){
								shuxuemax=si.getShuxuechengji();
							}
						}
						System.out.println("��ѧ��߷�"+shuxuemax);
					}else if(b==4){
						int yingyumax=0;
						for(StudentiInfo si:list){
							if(yingyumax<si.getYingyuchengji()){
								yingyumax=si.getYingyuchengji();
							}
						}
						System.out.println("Ӣ����߷�"+yingyumax);
					}else if(b==5){
						System.out.println("���ص�������");
						break;
					}else{
						System.out.println("���������������,���������룡");
					}
				}
			}else if(a==4){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("���������������,���������룡");
			}
		}
		
		
		
	}
	
	
}
