import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class A {

	public static void main(String[] args) {
		
		
		List<MailList> list = new ArrayList<MailList>();
		Scanner sc = new Scanner(System.in);
		
		while(true){
			System.out.println("�밴�� 1.�洢��Ϣ 2.��ѯ��Ϣ 3.���������� 4.���Ա����� 5.���绰�������� 6.�˳�" );
			int n =sc.nextInt();
			if(n==1){
				System.out.println("�������������Ա𣬵绰����:����,��,34512");
				MailList ml =new MailList();
				
				String str = sc.next();
				String[] arr =str.split(",");
				
				ml.setName(arr[0]);
				ml.setSex(arr[1].charAt(0));
				ml.setPhoneNum(arr[2]);
				list.add(ml);
				System.out.println("��ӳɹ�");
				
				
			}else if(n==2){
				for(MailList i:list){
					i.info();
				}
				
			}else if(n==3){
				System.out.println("����������");
				String name =sc.next();
				for(MailList ml:list){
					if(name.equals(ml.getName())){
						ml.info();
						break;
					}
				} 
				
			}else if(n==4){
				System.out.println("�������Ա�");
				Character sex =sc.next().charAt(0);
				for(MailList ml:list){
					if(sex.equals(ml.getSex())){
						ml.info();
						
					}
				}
				
			}else if(n==5){
				System.out.println("������绰����");
				String dianhua=sc.next();
				for(MailList ml:list){
					if(dianhua.equals(ml.getPhoneNum())){
						ml.info();
						break;
					}
				}
				
			}else if(n==6){
				System.out.println("����");
				break;
				
			}else{
				System.out.println("�밴��������");
			}
		}
		
		
		
		
	}
}
