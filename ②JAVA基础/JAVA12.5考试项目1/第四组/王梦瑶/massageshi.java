package xiangm2;

import java.util.List;
import java.util.Scanner;

public class massageshi implements massagejei {

	@Override
	public void add(List<massage> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("¼�뿼���ĸ߿���Ϣ:��������ţ����ĳɼ�����ѧ�ɼ���Ӣ��ɼ����ܳɼ�");
		String s=sc.next();
		String []arr=s.split("��");
		massage m=new massage();
		m.setName(arr[0]);
		m.setNo(arr[1]);
		m.setChinese(Integer.parseInt(arr[2]));
		m.setMath(Integer.parseInt(arr[3]));
		m.setEnglish(Integer.parseInt(arr[4]));
		m.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));	
		list.add(m);
		System.out.println("����ɹ�");
		
	}

	@Override
	public void fiandall(List<massage> list) {
		// TODO Auto-generated method stub
		System.out.println("��ʾ���п�����Ϣ");
		for(massage i:list ){
			i.info();
		}
	}

	@Override
	public void fiandzui(List<massage> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("��ѯ��߷�, ����: �ܷ���߷� �� ������߷�");
		while(true){
			System.out.println("1.�ܷ���߷�2.������߷�3.��ѧ��߷�4.Ӣ����߷�5.�˳�����");
			int j=sc.nextInt();
			if(j==1){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getTotal()){
						l=n.getTotal();
					}
					if(l==n.getTotal()){
						 g=n.getName();
					}
					
				}
				System.out.println("�ֵܷ���߷��ǣ�"+l+"���������ǣ�"+g);
			}else if(j==2){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getChinese()){
						l=n.getChinese();
					}
					if(l==n.getChinese()){
						 g=n.getName();
					}
					
				}
				System.out.println("���ĵ���߷���"+l+"����������"+g+"");
				
				
			}else if(j==3){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getMath()){
						l=n.getMath();
					}
					if(l==n.getMath()){
						 g=n.getName();
					}
					
				}
				System.out.println("��ѧ����߷���"+l+"����������"+g);
				
			}else if(j==4){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getEnglish()){
						l=n.getEnglish();
					}
					if(l==n.getEnglish()){
						 g=n.getName();
					}
					
				}
				System.out.println("Ӣ�����߷���"+l+"����������"+g);
				
			}else if(j==5){
				System.out.println("������һ��");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}

}
