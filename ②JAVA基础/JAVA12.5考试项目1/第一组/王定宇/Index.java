package yz;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<StudentInfo> list =new ArrayList<StudentInfo>();
		
		while(true){
			System.out.println("1.¼�뿼���ĸ߿���Ϣ 2.��ʾ���п�����Ϣ 3.��ѯ��߷� 4.�˳�����");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("�����뿼����Ϣ��Ϣ������������š����ġ���ѧ��Ӣ��ɼ����ܳɼ�����ʽ��:����,10,20,30,40");
				String str =sc.next();
				String[] arr =str.split(",");
				
				StudentInfo si = new StudentInfo();
				si.setName(arr[0]);
				si.setNo(arr[1]);
				si.setChinese(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("��ӳɹ�");
				
			}else if(num==2){
				for(StudentInfo si:list){
					si.info();
				}
				
				
			}else if(num==3){
				while(true){
					System.out.println("1.��ӡ�ܷ���߷� 2.��ӡ��ѧ��߷� 3.��ӡ������߷� 4.��ӡӢ����߷� 5.������һ��");
					int a =sc.nextInt();
					if(a==1){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getTotal()){
								max=si.getTotal();
							}
						}
						System.out.println("�ܷ���߷�"+max);
					}else if(a==2){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getMath()){
								max=si.getMath();
							}
						}
							System.out.println("��ѧ��߷�"+max);
						
					}else if(a==3){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getChinese()){
								max=si.getChinese();
							}
						}
						System.out.println("������߷�"+max);
						
					}else if(a==4){
						int max =0;
						for(StudentInfo si:list){
							if(max<si.getEnglish()){
								max=si.getEnglish();
							}
						}
						System.out.println("Ӣ����߷�"+max);
						
					}else if(a==5){
						System.out.println("������һ��");
						break;
						
					}else{
						System.out.println("����������ֲ��淶����������һ��");
					}
				}
				
			}else if(num==4){
				
			}else{
				System.out.println("�������н���");
				break;
			}
		}
	}
	
	
	
}
