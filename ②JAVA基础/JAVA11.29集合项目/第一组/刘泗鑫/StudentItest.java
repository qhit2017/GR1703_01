import java.util.List;
import java.util.Scanner;


public class StudentItest implements StudentImp{
	
	@Override
	public void zhengjia(List<Infor>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("������ѧ����Ϣ��eg������,�Ա�,����,סַ");
		Infor a = new Infor();
		String s = sc.next();
		String[] arr = s.split(",");
			a.setName(arr[0]);
			a.setSex(arr[1].charAt(0));
			a.setAge(Integer.parseInt(arr[2]));
			a.setZhuzhi(arr[3]);
			a.info();
			list.add(a);
		System.out.println("���ӳɹ�");
		System.out.println();
	}

	@Override
	public void chaxun(List<Infor>list) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("��ѯ����ѧ��:");
		for(Infor a : list){
			a.info();
		}
		System.out.println();
	}

	@Override
	public void namechaxun(List<Infor>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("����������ѯѧ����Ϣ����������:");				
		String s = sc.next();
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			if(s.equals(a.getName())){
				a.info();
				break;
			}	 
		}
		System.out.println();
	}

	@Override
	public void deleteStudent(List<Infor> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("ɾ��ѧ��:");	
		String s = sc.next();
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			if(s.equals(a.getName())){
				list.remove(a);
				break;
			}
		}
		System.out.println("ɾ���ɹ�");
		System.out.println();
		
	}

	@Override
	public void xiugai(List<Infor> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������޸�����:eg������,�Ա�,����,סַ");
		String s = sc.next();
		String[] arr = s.split(",");
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			a.setName(arr[0]);
			a.setSex(arr[1].charAt(0)); //ת����char����
			a.setAge(Integer.parseInt(arr[2])); //ת����int����
			a.setZhuzhi(arr[3]);
			System.out.println("�޸ĳɹ�");
			break;
		}
		System.out.println();
	}

}
