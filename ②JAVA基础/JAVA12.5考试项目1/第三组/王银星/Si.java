package com.ketang;

import java.util.List;
import java.util.Scanner;

public class Si  implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����룺��������š����ġ���ѧ��Ӣ��ɼ�����������ܳɼ�");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setName(sz[0]);
		s.setBianhao(Integer.parseInt(sz[1]));
		s.setYu(Integer.parseInt(sz[2]));
		s.setShu(Integer.parseInt(sz[3]));
		s.setYing(Integer.parseInt(sz[4]));
		s.setZong(Integer.parseInt(sz[2])+Integer.parseInt(sz[3])+Integer.parseInt(sz[4]));
		jihe.add(s);
		System.out.println("���ӳɹ���");
	}

	@Override
	public void er(List<Er>jihe) {
		// TODO Auto-generated method stub
		//��ѯ����ѧ��
		for(Er i:jihe){
			i.info();
		}
		System.out.println("��ѯ��ϣ�");
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����Ӳ˵���");
		while(true){
			System.out.println("1	:��ӡ�ܷ���߷�;	2:��ӡ������߷�;	3:��ӡ��ѧ��߷�;	4:��ӡӢ����߷�;	5:�˳�");
			int a=sc.nextInt();
			if(a==1){
				int z=0;
				String name1="";
				for(Er i:jihe){
					if(z<i.getZong()){
						z=i.getZong();
						name1=i.getName();
					}
				}
				System.out.println("�ܷ���߷��ǣ�"+z+"�������ǣ�"+name1);
			}else if(a==2){
				int yu=0;
				String name2="";
				for(Er i:jihe){
					if(yu<i.getYu()){
						yu=i.getYu();
						name2=i.getName();
					}
				}
				System.out.println("������߷��ǣ�"+yu+"�������ǣ�"+name2);
			}else if(a==3){
				String name3="";
				int shu=0;
				for(Er i:jihe){
					if(shu<i.getShu()){
						shu=i.getShu();
						name3=i.getName();
					}
				}
				System.out.println("��ѧ��߷��ǣ�"+shu+"�������ǣ�"+name3);
			}else if(a==4){
				String name4="";
				int ying=0;
				for(Er i:jihe){
					if(ying<i.getYing()){
						ying=i.getYing();
						name4=i.getName();
					}
				}
				System.out.println("Ӣ����߷��ǣ�"+ying+"�������ǣ�"+name4);
			}else if(a==5){
				System.out.println("������һ����");
				break;
			}
			else {
				System.out.println("�������ֲ��淶�������䣡");
			}
		}
		
	}

}
