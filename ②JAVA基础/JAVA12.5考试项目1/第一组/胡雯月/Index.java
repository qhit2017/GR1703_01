package comproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list= new ArrayList<Student>();
		
		Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println("��ѡ�� 1¼�뿼���߿���Ϣ 2��ʾ���п�����Ϣ 3��ѯ��߷� 4�˳�");
		int a=sc.nextInt();
	if(a==1){
		System.out.println("��¼������Ϣ ��ʽ������,���,����,��ѧ,Ӣ��,���� ������ 100,80,70,90");
		String str=sc.next();
		String []arr=str.split(",");
		
		Student si=new Student();
		si.setName(arr[0]);
		si.setNumbuter(arr[1]);
		si.setChinese(Integer.parseInt(arr[2]));
		si.setMath(Integer.parseInt(arr[3]));
		si.setEnglish(Integer.parseInt(arr[4]));
		
		si.setTotal(Integer.parseInt(arr[2]+Integer.parseInt(arr[3])+Integer.parseInt(arr[4])));
		list.add(si);
		System.out.println("��ӳɹ�");
	
	}else if(a==2){
		System.out.println("��ʾ���п�����Ϣ");
		for(Student s:list){
			s.info();
		}
	}else if(a==3){
		while(true){
		System.out.println("1��ӡ�ܷ���߷� 2��ӡ��ѧ��߷� 3��ӡ������߷� 4��ӡӢ����߷� 5�˳�");
		int  i=sc.nextInt();
		if(i==1){
			int max=0;
			for(Student s:list){
				if(max<s.getTotal()){
					max=s.getTotal();
					System.out.println("��߷��ܷ�"+max);
				}else if(i==2){
					int chinesemax=0;
					for(Student n:list){
						if(chinesemax<n.getChinese()){
							chinesemax=n.getChinese();
					}
					}
					System.out.println("�����ѧ��"+chinesemax);
				}else if(i==3){
					int mathmax=0;
					for(Student m:list){
						if(mathmax<m.getMath()){
							mathmax=m.getMath();
						}
					}
					System.out.println("������ķ�"+mathmax);
				}else if(i==4){
					int englishmax=0;
					for(Student q:list){
						if(englishmax<q.getEnglish()){
							englishmax=q.getEnglish();
						}
					}
					
					System.out.println("���Ӣ���"+englishmax);
				}else if(i==5){
					System.out.println("������һ��");
					break;
				}else{
					System.out.println("����������ֲ��淶 ���������");
				}
			}
				
			}
		}
		
	}else if(a==4){
		System.out.println("�������н���");
		break;
	}else{
		System.out.println("��������ֲ��淶,���������");
		
	}
		
	}
		
		
		
		
	}
	
	

}
