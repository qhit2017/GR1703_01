package today126;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
/*
ģ��һ��������ϵͳ����ҵ��Χ������
1   ������Ʒ
2   ����
3   ����
4   �ο����
5   �˳�����
*/
public class text {

	public static void main(String[] args) {
		List<shangpin> list=new ArrayList<shangpin>();
		Scanner sc= new Scanner(System.in);
		System.out.println("1   ������Ʒ  2 ����  3   ����4   �ο����  5   �˳�����");
		while(true){
			int n=sc.nextInt();
			if(n==1){
				System.out.println("������Ʒ�����磺������,��ţ�1,��Ǯ1.8,����100");
				String str=sc.next();
				String[]arr=str.split(",");
				shangpin a=new shangpin();
				a.setName(arr[0]);
				a.setBianhao(arr[1]);
				a.setMoney(Double.parseDouble(arr[2]));
				a.setNumber(Integer.parseInt(arr[3]));
				list.add(a);
				System.out.println("��ӳɹ�");
			}else	if(n==2){
				System.out.println("����");
				System.out.println("���,��������");
				String c=sc.next();
				String[]arr=c.split(","); 
				boolean fals=true;
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					if(arr[0].equals(a.getBianhao())){
					a.setNumber(a.getNumber()+Integer.parseInt(arr[1]));
					fals=false;
					System.out.println("�����ɹ�");
					break;
					}
				
				
				}
				if(fals){
					System.out.println("�������ɹ�");
				}
			}else	if(n==3){
				System.out.println("����");
				System.out.println("���,��������");
				String c=sc.next();
				String[]arr=c.split(","); 
				boolean fals =true;
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					if(arr[0].equals(a.getBianhao())&&a.getNumber()>Integer.parseInt(arr[1])){
						a.setNumber(a.getNumber()-Integer.parseInt(arr[1]));
						fals=false;
						System.out.println("��ӳɹ�");
						break;
					}
				}
				if(fals){
					System.out.println("���۲��ɹ�");
				}
			
			}else	if(n==4){
				System.out.println("�ο����");
				for(int b=0;b<list.size();b++){
					shangpin a=list.get(b);
					a.info();
				}
			
			
			}else	if(n==5){
				System.out.println("�˳�����");
				break;
			}else if(n==6){
				System.out.println("�����嵥");
				
				
			}else if(n==7){
				System.out.println("�����嵥");
		
			
			}
			
		
		
		
		
		
		}
		
		
		
		
		
	}
}
