package Day1;

import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class UsersControl {
	public static void main(String[] args) {
		List<Studentinfo> list=new ArrayList<Studentinfo>();
		Scanner sc=new Scanner(System.in);
		
		while(true){
			System.out.println("������������֣�1.¼�뿼���ĸ߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�4.�˳�");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("��¼�뿼���ĸ߿���Ϣ������,���,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
				Studentinfo si=new Studentinfo();
				String str=sc.next();
				String[] arr=str.split(",");
				si.setName(arr[0]);
				si.setCout(arr[1]);
				si.setYuwen(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("¼��ɹ���");				
			}else if(num==2){
				System.out.println("��ѯ����ѧ����Ϣ��");
				for(Studentinfo i:list){
					i.info();
				}
			}else if(num==3){
				System.out.println("��ѯ��߷�:��������Ҫ����������:1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
				while(true){
					int n=sc.nextInt();
					if(n==1){
						String name1="";
						int max1=0;
					for(Studentinfo m:list){
						if(max1<m.getTotal()){
							max1=m.getTotal();
							name1=m.getName();
						}
					}					
					System.out.println("�ܷ���߷֣�"+max1+"���������ǣ�"+name1);	
					
					}else if(n==2){
						String name2="";
						int max2=0;
						for(Studentinfo m:list){
							if(max2<m.getMath()){
								max2=m.getMath();
								name2=m.getName();
							}
						}
						System.out.println("��ѧ��߷֣�"+max2+"���������ǣ�"+name2);	
						
					}else if(n==3){
						String name3="";
						int max3=0;
						for(Studentinfo m:list){
							if(max3<m.getYuwen()){
								max3=m.getYuwen();
								name3=m.getName();
							}
						}
						System.out.println("������߷֣�"+max3+"���������ǣ�"+name3);	
						
					}else if(n==4){
						String name4="";
						int max4=0;
						for(Studentinfo m:list){
							if(max4<m.getEnglish()){
								max4=m.getEnglish();
								name4=m.getName();
							}
						}
						System.out.println("Ӣ����߷֣�"+max4+"���������ǣ�"+name4);	
					
					}else if(n==5){
						System.out.println("�˳�!");
						break;
					}else{					
						System.out.println("������Ĳ������淶���밴Ҫ�������лл��");
						
					}
				}
			}else if(num==4){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("������Ĳ������淶�����������룬лл!");
			}
		
		}
	}

}
