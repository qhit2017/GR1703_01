package practic;


import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class system {

	public static void main(String[] args) {
		
		List<infor> list=new ArrayList<infor>();
		
		Scanner sc =new Scanner(System.in);
		infor ser=new infor();
		while(true){
		System.out.println("�밴��ʾ���룺1��¼��ͨѶ¼   2����ѯͨѶ¼������  3����������   4:�Ա�����  5���绰����   6������ϵͳ");	
		String a=sc.next();
			if(a.equals("1")){
				System.out.println("������ͨѶ¼��Ϣ ,���磺����,��,12345678912");
				String b=sc.next();
				String arr[]=b.split(",");
				boolean t=true;
				if(arr.length!=3||arr[1].length()!=1){
					System.out.println("���������Ϣ���󣡣�");
					t=false;	
				}
				if(t){
					infor human=new infor();
					human.setName(arr[0]);
					char sex=arr[1].charAt(0);
					human.setSex(sex);
					human.setPhoneNum(arr[2]);
					list.add(human);
					System.out.println("¼��ɹ�����");
				}
			}else if(a.equals("2")){
				for(infor i:list){
					i.information();
				}
			}else if(a.equals("3")){
				System.out.println("����������,���磺����");
				String c=sc.next();
				for(infor i:list){
					if(i.getName().equals(c)){
						System.out.println("������ɣ�");
						i.information();
						break;
					}
				}
				
			}else if(a.equals("4")){
				System.out.println("�������Ա��л���Ů");
				String sex2=sc.next();
				char sex3=sex2.charAt(0);
				if(sex3=='��'){
					for(infor i:list){
						if(i.getSex()==sex3){
							i.information();
						}
					}
				}else if(sex3=='Ů'){
					for(infor i:list){
						if(i.getSex()==sex3){
							i.information();
						}
				}
				}
			}else if(a.equals("5")){
				System.out.println("������绰���룺");
				String num=sc.next();
				for(infor i:list){
					if(i.getPhoneNum().equals(num)){
						i.information();
						break;
					}
				}
			
			}else if(a.equals("6")){
				
				System.out.println("ϵͳ����,��л����ʹ�ã�����");
				break;
			}else{
				System.out.println("����������ֲ��淶,����������");
			}
			
			}
		
		}
		
	}
	
