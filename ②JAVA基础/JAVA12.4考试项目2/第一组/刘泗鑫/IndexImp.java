import java.util.List;
import java.util.Scanner;


public class IndexImp implements Infos{

	@Override
	public void tianjia(Scanner sc,List<Txl> list) {
		// TODO Auto-generated method stub
		System.out.println("¼��ͨѶ¼��Ϣ  eg:����,��,110119120");
		String str = sc.next();
		String[] arr = str.split(",");
		Txl t = new Txl();
		t.setName(arr[0]);
		t.setSex(arr[1].charAt(0));
		t.setNember(arr[2]);
		list.add(t);
		System.out.println("¼��ɹ���");
	}

	@Override
	public void chaxun(List<Txl> list) {
		// TODO Auto-generated method stub
		System.out.println("��ʾ����ͨѶ¼��Ϣ");
		for(Txl t : list){
			t.info();
		}
		System.out.println("��ѯ�ɹ���");
	}

	@Override
	public void namechaxun(Scanner sc,List<Txl> list) {
		// TODO Auto-generated method stub
		System.out.println("��������");
		String str = sc.next();
		for(Txl t:list){
			if(str.equals(t.getName())){
				t.info();
				break;
			}
		}
		System.out.println("�����ɹ���");
	}

	@Override
	public void sexchaxun(Scanner sc,List<Txl> list) {
		// TODO Auto-generated method stub
		System.out.println("�Ա�����");
		String str = sc.next();
		char c = str.charAt(0);
		for(Txl t : list){
			if(c==t.getSex()){
				t.info();
			}
		}
		System.out.println("�����ɹ���");
	}

	@Override
	public void nemchaxun(Scanner sc,List<Txl> list) {
		// TODO Auto-generated method stub
		System.out.println("�绰����");
		String str = sc.next();
		for(Txl t : list){
			if(str.equals(t.getNember())){
				t.info();
				break;
			}
		}
		System.out.println("�����ɹ���");
	}
	
	

}
