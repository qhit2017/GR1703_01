package test2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class system {

	public static void main(String[] args) {
		
		List<testinfor> list =new ArrayList<testinfor>();
		
		Scanner sc = new Scanner(System.in);
		serviceImpl ser = new serviceImpl();
		while(true){
			System.out.println("�밴����ʾ�������֣�1��¼��ѧ����Ϣ     2����ѯ����ѧ����Ϣ    3����ѯ��߷�  4���˳�ϵͳ");
			String a = sc.next();
			if(a.equals("1")){
				ser.insert(sc, list);
			}else if(a.equals("2")){
				ser.searchall(sc, list);
			}else if(a.equals("3")){
				int max=0;int maxc=0;int maxm=0;int maxe=0;
				for(int i=0;i<list.size();i++){
					testinfor tf = list.get(i);
					if(i==0){
						max=tf.getAll();maxc=tf.getChinese();maxm=tf.getMath();maxe=tf.getEnglish();
					}
					max=max>tf.getAll()?max:tf.getAll();	
					maxc=maxc>tf.getChinese()?maxc:tf.getChinese();	
					maxm=maxm>tf.getMath()?maxm:tf.getMath();	
					maxe=maxe>tf.getEnglish()?maxe:tf.getEnglish();	
				}
				ser.maxsore(sc, list, max, maxc, maxm, maxe);
			}else if(a.equals("4")){
				System.out.println("ϵͳ��������л����ʹ�ã�");
				break;
				
			}else{
				System.out.println("����������ֲ��淶!�밴����ʾ���룡");
			}
			
			
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
