package com.xingwenzhe;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Text {
	
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		Scanner s=new Scanner(System.in);
		
		while(true){
			System.out.println("��ѡ�� 1.¼�뿼���ĸ߿���Ϣ 2.��ʾ���п�����Ϣ 3.��ѯ��߷� 4.�˳�");
			int n=s.nextInt();
			if(n==1){
				System.out.println("¼�뿼����Ϣ");
				String str=s.next();
				String []arr=str.split(",");
				Student c=new Student();
				c.setName(arr[0]);
				c.setNo(arr[1]);
				c.setChinese(Integer.parseInt(arr[2]));
				c.setMath(Integer.parseInt(arr[3]));
				c.setEnglish(Integer.parseInt(arr[4]));
				c.setZongchengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(c);
			}else if(n==2){
				System.out.println("��ʾ���п�����Ϣ");
				for(Student d:list){
					d.info();
				}
			}else if(n==3){
				while(true){
					System.out.println("1.��ӡ�ܷ���߷� 2.��ӡ��ѧ��߷� 3.��ӡ������߷� 4.��ӡӢ����߷�  5.�˳�");
					int q=s.nextInt();
					if(q==1){
						System.out.println("��ӡ�ܷ���߷�");
						int max=0;
						for(Student x:list){
							if(max<x.getZongchengji()){
								max=x.getZongchengji();
								
							}
						
						}	
						System.out.println("��߷�"+max);
						}else if(q==2){
					
						System.out.println("��ӡ��ѧ��߷�");
						int math=0;
						for(Student z:list){
							if(math<z.getMath()){
								math=z.getMath();
							}
						}
						System.out.println(math);
					}else if(q==3){
						System.out.println("��ӡ������߷�");
						int chinese=0;
						for(Student a:list){
							if(chinese<a.getChinese()){
								chinese=a.getChinese();
								
							}
						}
						System.out.println(chinese );
					}else if(q==4){
						System.out.println("��ӡӢ����߷�");
						int english=0;
						for(Student f:list){
							if(english<f.getEnglish()){
								english=f.getEnglish();
							}
						}
						System.out.println(english);
					}else if(q==5){
						System.out.println("���н���");
						break;
					}else{
						System.out.println("����������ֲ���ȷ");
					}
				}
				
			}else if(n==4){
				System.out.println("����");
				break;
			}else{
				System.out.println("����������ֲ���ȷ");
			}
		}
	}
}

