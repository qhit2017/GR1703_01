
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Student {

	public static void main(String[] args) {
		
		List<Infor>list = new ArrayList<Infor>();
		Scanner sc = new Scanner(System.in);
		StudentItest ti = new StudentItest();
		System.out.println("*************************************************************");
		System.out.println("\t\t ��ӭ����JavaSwingѧ������ϵͳ\n");
		System.out.println("\t\t\t1.����ѧ��\n");
		System.out.println("\t\t\t2.��ѯ����ѧ��\n");
		System.out.println("\t\t\t3.����������ѯѧ����Ϣ\n");
		System.out.println("\t\t\t4.ɾ��ѧ��\n");
		System.out.println("\t\t\t5.�޸�ѧ����Ϣ\n");
		System.out.println("\t\t\t6.�˳�\n");
		System.out.println("*************************************************************");
		
		while(true){
			System.out.println("1.����ѧ�� 2.��ѯ����ѧ�� 3.����������ѯѧ����Ϣ 4.ɾ��ѧ�� 5.�޸�ѧ����Ϣ 6.�˳�");
			System.out.print("�����룺");
			int n = sc.nextInt();
			if(n==1){
				//����ѧ��
				ti.zhengjia(list, sc);
			}else if(n==2){
				//��ѯ����ѧ��
				ti.chaxun(list);
			}else if(n==3){
				//����������ѯѧ����Ϣ 
				ti.namechaxun(list, sc);
			}else if(n==4){
				//ɾ��ѧ��
				ti.deleteStudent(list, sc);
			}else if(n==5){
				//�޸�ѧ����Ϣ
				ti.xiugai(list, sc);
			}else if(n==6){
				System.out.println();
				System.out.println("���η��񵽴˽���.");
				System.out.println();
				break;
			}else{
				System.out.println("�������ʾ������ȷָ�");
			}
		}
	}
	
	
}
