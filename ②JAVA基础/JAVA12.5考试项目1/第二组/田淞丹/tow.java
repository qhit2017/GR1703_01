package tsd;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class tow {
	/*ģ��һ���߿�����ϵͳ����ҵ��Χ������
	1	¼�뿼���ĸ߿���Ϣ
	2	��ʾ���п�����Ϣ
	3	��ѯ��߷�, ����: �ܷ���߷� �� ������߷�
	4	�˳�����
	 */
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		List<one>list=new ArrayList<one>();
		while(true){
			System.out.println("1¼�뿼���ĸ߿���Ϣ,2��ʾ���п�����Ϣ,3��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4�˳�");
			int n=sc.nextInt();
			
			if(n==1){
				System.out.println("¼�뿼���ĸ߿���Ϣ");
				String a=sc.next();
				String[]arr=a.split(",");
				one b=new one();
				b.setName(arr[0]);
				b.setBianhao(arr[1]);
				b.setYuwen(Integer.parseInt(arr[2]));
				b.setShuxue(Integer.parseInt(arr[3]));
				b.setYingyu(Integer.parseInt(arr[4]));
				b.setChengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(b);
				System.out.println("�������");
			
			
			}else	if(n==2){
				System.out.println("��ʾ���п�����Ϣ");
				for(one i:list){
					i.info();
				}
				
			
			}else	if(n==3){
				System.out.println("��ѯ��߷�, ����: �ܷ���߷� �� ������߷�");
				/*1	��ӡ�ܷ���߷�
				2	��ӡ��ѧ��߷�
				3	��ӡ������߷�
				4	��ӡӢ����߷�
				5	�˳�*/
				while(true){
					int z=sc.nextInt();
					if(z==1){
						System.out.println("��ӡ�ܷ���߷�");
						int []arr=new int[list.size()];
						for(int g=0;g<list.size();g++){
							arr[g]=list.get(g).getChengji(); 
						}
					
						for(int h=0;h<arr.length-1;h++){
							for(int x=h+1;x<arr.length;x++ ){
								if(arr[h]<arr[x]){
									arr[h]=arr[x];
								}
							}
						}
					System.out.println(arr[0]);
				
					
					
					
					}else if(z==2){
						System.out.println("��ӡ��ѧ��߷�");
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getShuxue();
						}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						
						}
						System.out.println(arr[0]);
					}else if(z==3){
						System.out.println("��ӡ������߷�");
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getYuwen();				}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						}
					System.out.println(arr[0]);
					}else if(z==4){
						System.out.println("��ӡӢ����߷�");	
						int[]arr=new int[list.size()];
						for(int a=0;a<arr.length;a++){
							arr[a]=list.get(a).getYingyu();
						}
						for(int b=0;b<arr.length-1;b++){
							for(int c=b+1;c<arr.length;c++){
								if(arr[b]<arr[c]){
									arr[b]=arr[c];
								}
							}
						}
					
					System.out.println(arr[0]);
					}else if(z==5){
						System.out.println("�˳�");
					break;
					}
				
				
				
				
				
				
				
				}
				
				
				
				
				
			
			
			
			
			}else	if(n==4){
				System.out.println("�˳�");
			break;
			}
		}
	}
}
