package COM.XM;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class one {
	public static void main(String[] args) {
		List<tow> list=new ArrayList<tow>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("�밴����1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("����Ҫ¼��ͨѶ¼��Ϣ����Ϣ��ʽΪ������,�Ա�,�绰");
				String str=sc.next();
				String arr[]=str.split(",");
				tow a=new tow ();
				a.setName(arr[0]);
				a.setXingbie(arr[1].charAt(0));
				a.setDianhua(Integer.parseInt(arr[2]));
				list.add(a);
				System.out.println("��ӳɹ���");
			}else if(num==2){
				for(tow e:list){
					e.info();
				}
			}else if(num==3){
				System.out.println("������������");
				String name=sc.next();
				for(tow e:list){
					if(name.equals(e.getName())){
						e.info();
					}
				}
			}else if(num==4){
				System.out.println("�������Ա�");
				char sex=sc.next().charAt(0);
				for(tow e:list){
					if(sex==e.getXingbie()){
						e.info();
					}
				}
			}else if(num==5){
				System.out.println("������绰��");
				int dianhua=sc.nextInt();
				for(tow e:list){
					if(dianhua==e.getDianhua()){
						e.info();
					}
				}
				
			}else if(num==6){
				System.out.println("ϵͳֹͣ");
				break;
			}else{
				System.out.println("��������ȷ�İ�����");
			}
			
		}
	}

}
