package zuoye28;

import java.util.ArrayList;
import java.util.Scanner;

public class find {

	//�밴����1����ѧ��   2��ѯ����ѧ��   3������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ  6�˳�
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		ArrayList<Student> a=new ArrayList<Student>();
		jiekou zz=new zuoyong();
		while(true){
			System.out.println("�밴����1����ѧ��   2��ѯ����ѧ��   3������������ѧ��  4ɾ��ѧ��  5�޸�ѧ����Ϣ  6�˳�");
			int n=sc.nextInt();
			if(n==1){
			zz.zengjia(a, sc);
			}
			if(n==2){
				zz.suoyou(a);
				
			
			}
			if(n==3){
				
				zz.chaxun(a, sc);
			
			
			}
			if(n==4){
				zz.shanchu(a, sc);
				
			
			}
			if(n==5){
				zz.xiugai(a, sc);
				
			
			
			
			
			}
			if(n==6){
				System.out.println("�˳�");
				break;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}

}
