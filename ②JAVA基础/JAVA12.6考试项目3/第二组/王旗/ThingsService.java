package Day2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ThingsService {
	public static void main(String[] args) {
		
		List<ThingsInfo> list=new ArrayList<ThingsInfo>();
		List<ThingsInfo> list1=new ArrayList<ThingsInfo>();
		List<ThingsInfo> list2=new ArrayList<ThingsInfo>();
		Scanner sc=new Scanner(System.in);
		
		while(true){
			System.out.println("������������ֽ��в�����1.������Ʒ2.����3.����4.�ο����5.������¼6.������¼7.�˳�");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("��������Ҫ��ӵ���Ʒ�����,����,�۸�,�������磺001,���,2,100");
				ThingsInfo ti=new ThingsInfo();
				String str=sc.next();
				String[] arr=str.split(",");
				ti.setNum(arr[0]);
				ti.setName(arr[1]);
				ti.setPrice(Double.parseDouble(arr[2]));
				ti.setCount(Integer.parseInt(arr[3]));
				list.add(ti);
				System.out.println("��ӳɹ���");
			}else if(n==2){
				System.out.println("�������������Ʒ��ź�����Ҫ��ӵ��������磺001,200");
				String str=sc.next();
				String[] arr=str.split(",");
				String name="";
				ThingsInfo ti1=new ThingsInfo();
				
				boolean flag=true;
				for(ThingsInfo i:list){
					if(arr[0].equals(i.getNum())){	
						name=i.getName();
						i.setCount((i.getCount()+Integer.parseInt(arr[1])));
						flag=false;
						System.out.println("������ɣ�"+"������У�"+i.getCount());
						break;
					}if(flag){						
						System.out.println("����ʧ�ܣ�");
						break;
					}
				}			
			    ti1.setName(name);
				ti1.setCount(Integer.parseInt(arr[1]));
				list1.add(ti1);
			}else if(n==3){
				System.out.println("��������Ҫ���۵���Ʒ��ź����������磺002,2");
				String str=sc.next();
				String[] arr=str.split(",");
				ThingsInfo ti2=new ThingsInfo();
				String name="";
				boolean flag=true;
				for(ThingsInfo i:list){
					if(arr[0].equals(i.getNum())){	
						name=i.getName();
						i.setCount((i.getCount()-Integer.parseInt(arr[1])));
						flag=false;
						System.out.println("������ɣ�"+"������У�"+i.getCount());
						break;
					}if(flag){
						System.out.println("����ʧ��!");
						break;
					}
				}
			    ti2.setName(name);
				ti2.setCount(Integer.parseInt(arr[1]));
				list2.add(ti2);
			}else if(n==4){
				System.out.println("��棺");
				for(ThingsInfo i:list){
					i.info();
				}
			}else if(n==5){
				System.out.println("������¼��");
				for(ThingsInfo i:list1){
					i.come();
				}
			}else if(n==6){
				System.out.println("������¼��");
				for(ThingsInfo i:list2){
					i.out();
				}	
			}else if(n==7){
				System.out.println("�˳���ɣ�");
				break;
			}
			else{
				System.out.println("������Ĳ������淶�����������룬лл��");
			}
			
				
		}
	}

}
