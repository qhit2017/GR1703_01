package www;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import qqq.list;

public class w1 {
        
	 public static void main(String[] args) {
		 
		 List <w2> list = new ArrayList<w2>();
		
		  Scanner sc =new Scanner(System.in);
		 
		 while(true){
			 System.out.println("1.¼�뿼���ĸ߿���Ϣ2.��ʾ���п�����Ϣ3.��ѯ��߷�4.�˳�");
			  int num =  sc.nextInt();
			 if (num==1) {
				 System.out.println("�����뿼����Ϣ   ��ʽΪ:����,���,����,��ѧ,Ӣ��ɼ�  ���磺����,1010,98,78,98");
				    String str = sc.next();
				    String [] arr = str.split(",");
				        w2 w = new w2();
				        w.setName(arr[0]);
				        w.setBh(arr[1]);
				        w.setYw(Integer.parseInt(arr[2]));
				        w.setSx(Integer.parseInt(arr[3]));
				        w.setYy(Integer.parseInt(arr[4]));
				        w.setZf(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				        list.add(w);
				        System.out.println("¼ȡ�ɹ�");
			} else if(num==2){
				System.out.println("���п�����ϢΪ:");
				 for(w2 w:list){
					 w.inof();
					
				}
			} else if(num==3){
				System.out.println("1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
				int i = sc.nextInt();
				while(true){
					int max = 0;
					if (i==1) {
						for(w2 w:list){
							if(max<w.getZf()){
								max=w.getZf();
							}
							System.out.println("�ܷ���߷�Ϊ��"+max);
						}
						
						
						
						
					} else if(i==2){
						int q = 0;
						for(w2 w:list){
							if (q<w.getSx()) {
								q=w.getSx();
								
							}
							System.out.println("��ѧ��߷�Ϊ��"+q);
						}
						
						
						

					} else if(i==3){
						int e = 0;
						 for(w2 w:list){
							 if (e<w.getYw()) {
								 e=w.getYw();
								
							}
							 System.out.println("������߷�Ϊ:"+e);
						 }
						
					} else if(i==4){
						System.out.println();
						
						
						
					} else if(i==5){
						int r = 0;
						for(w2 w:list){
							if (r<w.getYy()) {
								r=w.getYy();
							}
							System.out.println("Ӣ����߷�Ϊ:"+r);
						}
						
					}
					
				}
				
				
				
			 
		    } else if(num==4){
		    	System.out.println("�˳�");
		    	
		    } else{
		    	System.out.println("���������������,����������.");
		 
		 
	  }
   } 
    }
}