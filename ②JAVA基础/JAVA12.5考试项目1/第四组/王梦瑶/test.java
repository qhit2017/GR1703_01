package xiangm2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class test {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<massage> list =new ArrayList<massage>();
		massagejei b=new massageshi();
		while(true){
			System.out.println("1.¼�뿼���ĸ߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4�˳�����");
			int t=sc.nextInt();
			if(t==1){
				b.add(list, sc);
				
			}else if(t==2){
				b.fiandall(list);
				
			}else if(t==3){
				b.fiandzui(list, sc);
			}else if(t==4){
				
				System.out.println("�˳�����");
				break;
			}else if(t==5){
				System.out.println("����������ֲ��淶");
			}
		}
				 
	}

}
