package testday;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.jar.Attributes.Name;

public class o1 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		student i = new student();
		ArrayList<student>list= new ArrayList<student>();
		while(true){
			System.out.println("1,���ѧ��2,��ѯѧ����Ϣ3,����������ѯ4,ɾ��ѧ��5,�޸���Ϣ6,�˳�");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("���ѧ��");
				System.out.println("������ѧ����Ϣ�����������У�18������");
				String str=sc.next();
				String []arr=str.split(",");
			student s=new student();
			s.setName(arr[0]);
			s.setSex(arr[1].charAt(0));
			s.setAge(arr[2].charAt(0));
			s.setZhuzi(arr[3].charAt(0));
			list.add(s);
			for(student z:list){
				z.inof();
			}
			
			}else if(a==2){
				System.out.println("������������");
				String name=sc.next();
				for(student s:list){
					if(name.equals(s.getName())){
						s.inof();
						break;
					}
				}
			}else if(a==3){
				System.out.println("ɾ��ѧ��");
				String name=sc.next();
				 for (int z=0;z<list.size();z++){
					 student s=list.get(s);
					 if(name.equalsIgnoreCase(s.getName())){
						 list.remove(s);
						 break;
					 }
					 
				 }
				
			}else if(a==4){
				System.out.println("�޸���Ϣ");
				String str=sc.next();
				String[]arr=str.split(",");
				int age=Integer.parseInt(arr[1]);
				for(student s:list){
				if(name.equals(s.getName())){
					s.setAge(age);
					break;
				}	
				}
			}else if(a==5){
				System.out.println("�˳�");
			}else{
				System.out.println("���������Ϣ��ѯ����");
			}
			System.out.println("");
		}
	}
}
