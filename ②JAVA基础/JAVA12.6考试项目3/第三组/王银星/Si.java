package com.ketang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Si implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����룺1:��Ʒ��ţ�2:���ƣ�3:�۸�4:��ʼ�������м�����    ,  ������");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setBianhao(Integer.parseInt(sz[0]));
		s.setName(sz[1]);
		s.setJiage(Integer.parseInt(sz[2]));
		s.setChushishuliang(Integer.parseInt(sz[3]));
		jihe.add(s);
		System.out.println("������Ʒ�ɹ���");
	}

	@Override
	public void er(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		
		System.out.println("��������Ʒ��ź��������м���   ,    ����");
		String a1=sc.next();
		String []sz=a1.split(",");
		boolean flag=true;
		Er s1=new Er();
		for(Er j:jihe){
			if(Integer.parseInt(sz[0])==j.getBianhao()){
				j.setChushishuliang(j.getChushishuliang()+Integer.parseInt(sz[1]));
				flag=false;
				
				s1.setBianhao(Integer.parseInt(sz[0]));
				s1.setChushishuliang(Integer.parseInt(sz[1]));
				s1.setName(j.getName());
				s1.setJiage(j.getJiage());
				
				
			}
			if(flag){
				System.out.println("����ʧ�ܣ�");
			}
		}
		
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("��������Ʒ��ź��������м���   ,    ����");
		String a2=sc.next();
		String sz[]=a2.split(",");
		boolean flag=true;
		for(Er j:jihe){
			if(Integer.parseInt(sz[0])==j.getBianhao()&&j.getChushishuliang()>Integer.parseInt(sz[1])){
				j.setChushishuliang(j.getChushishuliang()-Integer.parseInt(sz[1]));
				flag=false;
			}if(flag){
				System.out.println("����ʧ�ܣ�");
			}
			
		}
	}

	@Override
	public void si(List<Er>jihe) {
		// TODO Auto-generated method stub
		System.out.println("��棺");
		for(Er j:jihe){
			j.info();
		}
	}

	@Override
	public void liu(List<Er>arr) {
		// TODO Auto-generated method stub
		System.out.println("������¼��");
		for(Er j:arr){
			j.info();
		}
	}

}
