package Work;
import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.Scanner;


public class Index {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		StudentIservice Service=new StudentserriceImpI();
		ArrayList<Student>list=new ArrayList<Student>();
		while(true){
			System.out.println("�밴��1����ѧ��,2��ѯ����ѧ��,3����������ѯѧ����Ϣ,4ɾ��ѧ�� ,5�޸�ѧ����Ϣ,6 �˳�");
			int a=sc.nextInt();
			if(a==1){
				//��ӷ���
				Service.insert(list,sc);
			}else if(a==2){	
				//��ѯѧ��
				Service.findAll(list);
			}else if(a==3){
			    //��������ѯ
				Service.findByName(list, sc);
			}else if(a==4){
				//ɾ��ѧ��
				System.out.println("������ѧ������");
				String name=sc.next();
				for(int i=0;i<list.size();i++){
					Student s=list.get(i);
					if(name.equals(s.getName())){
						list.remove(a);
						break;
						}
				}
						System.out.println("�ɹ�ɾ��");
			}else if(a==5){
				//�޸�ѧ����Ϣ
				System.out.println("����ѧ���������µ�����");
				String str=sc.next();
				String[]arr=str.split(",");
				String name=arr[0];
				int age=Integer.parseInt(arr[1]);
				
				for(Student m:list){
					if(name.equals(m.getName())){
						m.setAge(age);
						System.out.println("�޸ĳɹ�");
						break;
					}
					
				
			
						
						
					}
				}
			}
   
			
		}
		
	}


