package com.KaoShi3;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TestGoods {
	
	/*
	 	/*
	 ģ��һ��������ϵͳ����ҵ��Χ������
1   ������Ʒ
2   ����
3   ����
4   �ο����
5   �˳�����
�������
1��������Ʒ��¼����Ʒ��Ϣ������Ʒ��š����ơ��۸񡢳�ʼ����
2��������������Ʒ��ź����������д˱����Ʒ����������Ӧ��������û������ʾ����ʧ�ܡ�
3�����ۣ�������Ʒ��ź����������д˱����Ʒ����Ʒ�������������������������Ӧ������������ʾ����ʧ�ܡ�
4���ο���������ʾ������Ʒ��Ϣ������Ʒ��š����ơ��۸�����
5���˳����ܿ����˳�ϵͳ

	 */
	 
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Goods> list = new ArrayList<Goods>();
		List<Goods> a = new ArrayList<Goods>();
		List<Goods> b = new ArrayList<Goods>();
		
		while(true){
			System.out.println("1.������Ʒ  2.����  3.����  4.�ο����  5.�鿴�����˵�  6.�鿴�����˵�  7.�˳�����");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("�����Ʒ,������:��Ʒ���,��Ʒ����,�۸�,��Ʒ����");
				String str = sc.next();
				String[] arr = str.split(",");
				Goods g = new Goods();
				g.setNumbering(arr[0]);
				g.setName(arr[1]);
				g.setPrice(Double.parseDouble(arr[2]));
				g.setCount(Integer.parseInt(arr[3]));
				list.add(g);
				System.out.println("��ӳɹ���");
			}else if(n==2){
				System.out.println("����,������:��Ʒ���,��������");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean q =true;
				for(Goods g:list){
					if(arr[0].equals(g.getNumbering())){
						g.setCount(g.getCount()+Integer.parseInt(arr[1]));
						q=false;
						System.out.println("�����ɹ�,����:"+Integer.parseInt(arr[1])+",����:"+g.getCount());
						g.setJinhuo(Integer.parseInt(arr[1]));
						a.add(g);
						break;
					}
				}
				if(q){
					System.out.println("����ʧ�ܣ�");
				}
			}else if(n==3){
				System.out.println("����,������:��Ʒ���,��������");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean q =true;
				for(Goods g:list){
					if(arr[0].equals(g.getNumbering())){
						g.setCount(g.getCount()-Integer.parseInt(arr[1]));
						q=false;
						System.out.println("���۳ɹ�,����:"+Integer.parseInt(arr[1])+",����:"+g.getCount());
						g.setXiaoshou(Integer.parseInt(arr[1]));
						b.add(g);
						break;
					}
				}
				if(q){
					System.out.println("����ʧ�ܣ�");
				}
			}else if(n==4){
				System.out.println("��ѯ���");
				for(Goods g:list){
					g.info();
				}
				System.out.println("��ѯ�ɹ���");
			}else if(n==5){
				System.out.println("��ѯ�����˵�");
				for(Goods g:a){
					g.jinhuo();
				}
				System.out.println("��ѯ�ɹ���");
				
			}else if(n==6){
				System.out.println("��ѯ�����˵�");
				for(Goods g:b){
					g.xiaoshou();
				}
				System.out.println("��ѯ�ɹ���");
			}else if(n==7){
				System.out.println("���η������");
				break;
			}else{
				System.out.println("������ĸ�ʽ���淶,��������룡");
			}
		}
		
	}

}
