package com.xingwenzhe;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class Text {
	
	public static void main(String[] args) {
		
		System.out.println("�밴����1.¼��ͨѶ��Ϣ 2.��ʾ����ͨѶ¼��Ϣ 3.�������� 4.�Ա����� 5.�绰���� 6.�˳�����");
		
		List<Tongxunlu>list= new ArrayList<Tongxunlu>(); 
		
		Scanner s=new Scanner(System.in);
		
		while(true){
		
		Tongxunlu t=new Tongxunlu();
		
		int n=s.nextInt();
		
		if(n==1){
			System.out.println("¼��ͨѶ��Ϣ:����,�Ա�,�绰, ��:����,Ů,123456");
			
			String i=s.next();
			
			String[]arr=i.split(",");
			
			Tongxunlu z=new Tongxunlu();
			
			int r=Integer.parseInt(arr[2]);
			
			z.setName(arr[0]);
			
			z.setSex(arr[1].charAt(0));
			
			z.setPhonenumber(arr[2]);
			
			list.add(z);
			
			System.out.println("����ɹ�");
			
		}else if(n==2){ 
			
			System.out.println("��ʾ����ͨѶ¼��Ϣ");
			
			for(Tongxunlu a:list){
				
				a.info();
			}
		}else if(n==3){
			
		    System.out.println("��������");
		    
		    String name=s.next();
		    
		    for(Tongxunlu q:list){
		    	
		    	if(name.equals(q.getName())){
		    		
		    		q.info();
		    		
		    		break;
		    	}
		    }
	    }else if(n==4){
	    	
	    	System.out.println("�Ա�����");
	    	
	    	String sex=s.next();
	    	
	    	for(int w=0;w<list.size();w++){
	    		
	    		Tongxunlu d=list.get(w);
	    		
	    		d.info();
	    		}
	    	
		
	    }else if(n==5){
	    	
	    	System.out.println("�绰����");
	    	
	    	String c=s.next();
	    	
	    	for(Tongxunlu v:list){
	    		
	    		v.info();
	    	}
	    }else if(n==6){
	    	
	    	System.out.println("�������н���");
	    	
	    	break;
	    }else{
	    	
	    	System.out.println("����������ֲ��淶");
	    }

}
}
}