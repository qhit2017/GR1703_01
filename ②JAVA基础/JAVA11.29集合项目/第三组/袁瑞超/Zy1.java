import java.util.ArrayList;
import java.util.Scanner;


public class Zy1 {
	public static void main(String[] args) {
	Scanner Sc =new Scanner(System.in);
	ArrayList<xuesheng>  list =new ArrayList<xuesheng>();               	
	while(true){
		System.out.println("�밴����1 ����ѧ��  2 ��ѯ����ѧ�� 3 ����������ѯѧ����Ϣ  4 ɾ��ѧ�� 5 �޸�ѧ����Ϣ 6 �˳�");
	
		int n =Sc.nextInt();
	if(n==1){
		System.out.println("����ѧ��,���磺����������,�Ա���,���꣺18����,���ԣ��ܿ�");
		String  Str =Sc.next();
		String [] arr=Str.split("��");
	xuesheng  s=new xuesheng(); 
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(Integer.parseInt(arr[2]));
		s.setDizhi(arr[3]);
		list.add(s);
		System.out.println("��ӳɹ���");
	}else  if (n==2){
		System.out.println("��ѯ����ѧ��");
		for(xuesheng i:list){
			i.info();
		}
		
	}else  if (n==3){
		System.out.println(" ����������ѯѧ����Ϣ");
	}else  if (n==4){
		System.out.println("ɾ��ѧ��");
	}else  if (n==5){
		System.out.println(" �޸�ѧ����Ϣ");
	}else  if (n==6){
		System.out.println("�˳�");
		break;
	
	}else{
		System.out.println("����������������밴��ʾ���룺");
	}
	
	}
	
	
	
	}
	



}
