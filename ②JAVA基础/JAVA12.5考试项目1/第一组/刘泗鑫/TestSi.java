import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class TestSi {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<StudentInfo> list = new ArrayList<StudentInfo>();
		
		while(true){
			System.out.println("1.¼�뿼���ĸ߿���Ϣ  2.��ʾ���п�����Ϣ  3.��ѯ��߷�  4.�˳�����");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("¼�뿼���ĸ߿���Ϣ");
				String str = sc.next();
				String[] arr = str.split(",");
				StudentInfo si = new StudentInfo();
				si.setName(arr[0]);
				si.setNember(arr[1]);
				si.setLanguage(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("¼��ɹ���");
			}else if(n==2){
				System.out.println("��ѯ���п�����Ϣ");
				for(StudentInfo si:list){
					si.info();
				}
				System.out.println("��ѯ�ɹ���");
			}else if(n==3){
				System.out.println("��ѯ��߷�");
				while(true){
					System.out.println("1.��ӡ�ܷ���߷�  2.��ӡ��ѧ��߷�  3.��ӡ������߷�  4.��ӡӢ����߷�  5.������һ��");
					int nem=sc.nextInt();
					if(nem==1){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getTotal()){
								max=si.getTotal();
							}
						}
						for(int i =0;i<list.size();i++){
							StudentInfo si = list.get(i);
							if(max==si.getTotal()){
								System.out.println("������"+si.getName()+",�ܷ���߷֣�"+max);
							}
						}
					}else if(nem==2){
						System.out.println("��ӡ��ѧ��߷�");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getMath()){
								max=si.getMath();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("������"+s.getName()+",��ѧ��߷֣�"+max);
							}
						}
					}else if(nem==3){
						System.out.println("��ӡ������߷�");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getLanguage()){
								max=si.getLanguage();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("������"+s.getName()+",������߷֣�"+max);
							}
						}
					}else if(nem==4){
						System.out.println("��ӡӢ����߷�");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getEnglish()){
								max=si.getEnglish();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("������"+s.getName()+",Ӣ����߷֣�"+max);
							}
						}
					}else if(nem==5){
						System.out.println("������һ��");
						break;
					}else{
						System.out.println("����������ֲ��淶�����������룡");
					}
				}
			}else if(n==4){
				System.out.println("�������н���");
				break;
			}else{
				System.out.println("����������ֲ��淶�����������룡");
			}
		}
		
	}

}
