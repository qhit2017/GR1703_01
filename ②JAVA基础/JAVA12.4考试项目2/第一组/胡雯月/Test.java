package zailian;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Test {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<student> list =new ArrayList<student>();
		stujei j=new studentshi();
		while(true){
			System.out.println("1.¼��ѧ���Ŀ�����Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�4.�˳�����");
			int t=sc.nextInt();
			if(t==1){
				//¼��ѧ���Ŀ�����Ϣ
				j.add(list, sc);
			}else if(t==2){
				//��ʾ���п�����Ϣ
				j.fiandall(list);
				
			}else if(t==3){
				//��ѯ��߷�
				j.fiandzui(list, sc);
					
						
					
			
		}else if(t==4){
			System.out.println("����");
			
		}else {
			System.out.println("����������Ҳ���ʶ");
		}
		}		
	}

}	

