import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class TextTxl {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Txl> list = new ArrayList<Txl>();
		Infos i = new IndexImp();
		
		while(true){
			System.out.println("1.¼��ͨѶ¼��Ϣ  2.��ʾ����ͨѶ¼��Ϣ  3.��������  4.�Ա�����  5.�绰����  6.�˳�����");
			int n = sc.nextInt();
			if(n==1){
				//¼��ͨѶ¼��Ϣ
				i.tianjia(sc, list);
			}else if(n==2){
				//��ʾ����ͨѶ¼��Ϣ
				i.chaxun(list);
			}else if(n==3){
				//��������
				i.namechaxun(sc, list);
			}else if(n==4){
				//�Ա�����
				i.sexchaxun(sc, list);
			}else if(n==5){
				//�绰����
				i.nemchaxun(sc, list);
			}else if(n==6){
				System.out.println("���η��������");
				break;
			}else{
				System.out.println("�������ָ�����");
			}
		}
		
		
	}

}
