package com.xingwenzhe;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class Text {
	
	public static void main(String[] args) {
		
		System.out.println("请按键：1.录入通讯信息 2.显示所有通讯录信息 3.姓名搜素 4.性别搜索 5.电话搜索 6.退出功能");
		
		List<Tongxunlu>list= new ArrayList<Tongxunlu>(); 
		
		Scanner s=new Scanner(System.in);
		
		while(true){
		
		Tongxunlu t=new Tongxunlu();
		
		int n=s.nextInt();
		
		if(n==1){
			System.out.println("录入通讯信息:姓名,性别,电话, 如:蒙蒙,女,123456");
			
			String i=s.next();
			
			String[]arr=i.split(",");
			
			Tongxunlu z=new Tongxunlu();
			
			int r=Integer.parseInt(arr[2]);
			
			z.setName(arr[0]);
			
			z.setSex(arr[1].charAt(0));
			
			z.setPhonenumber(arr[2]);
			
			list.add(z);
			
			System.out.println("保存成功");
			
		}else if(n==2){ 
			
			System.out.println("显示所有通讯录信息");
			
			for(Tongxunlu a:list){
				
				a.info();
			}
		}else if(n==3){
			
		    System.out.println("姓名搜索");
		    
		    String name=s.next();
		    
		    for(Tongxunlu q:list){
		    	
		    	if(name.equals(q.getName())){
		    		
		    		q.info();
		    		
		    		break;
		    	}
		    }
	    }else if(n==4){
	    	
	    	System.out.println("性别搜索");
	    	
	    	String sex=s.next();
	    	
	    	for(int w=0;w<list.size();w++){
	    		
	    		Tongxunlu d=list.get(w);
	    		
	    		d.info();
	    		}
	    	
		
	    }else if(n==5){
	    	
	    	System.out.println("电话搜索");
	    	
	    	String c=s.next();
	    	
	    	for(Tongxunlu v:list){
	    		
	    		v.info();
	    	}
	    }else if(n==6){
	    	
	    	System.out.println("程序运行结束");
	    	
	    	break;
	    }else{
	    	
	    	System.out.println("您输入的数字不规范");
	    }

}
}
}