package zuoye;

import java.util.Scanner;

public class work5 {
	
	/*
	 * 
	 * ģ��ʵ�ּ������Ĺ���
       Ҫ��Ӽ��������һ����
	���������
	����ڶ�����
	Ȼ��������
    ����������7��Ȼ������+���������8 �س�֮�������7+8=15
	����������9��Ȼ������/���������2 �س�֮�������9/2=4
	 * 
	 */
      public static void main(String[] args) {
		
    	  Scanner sc=new Scanner(System.in);
    	  
    	  System.out.println("������һ������");
    	  
    	  int i=sc.nextInt();

          System.out.println("������һ���ַ���");
      
           String s=sc.next();
           
          
           
           if(s.equals("+")){
        	   System.out.println("������ڶ�����");              
               int a=sc.nextInt();
        	   System.out.println(i+"+"+a+"="+(i+a));
           } 
           else if(s.equals("-")){
        	   System.out.println("������ڶ�����");              
        	   int a=sc.nextInt();
        	   System.out.println(i+"-"+a+"="+(i-a));
           } 
           else if(s.equals("*")){
        	   System.out.println("������ڶ�����");              
        	   int a=sc.nextInt();
        	   System.out.println(i+"*"+a+"="+(i*a));
           } 
           else if(s.equals("/")){
        	   System.out.println("������ڶ�����");              
        	   int a=sc.nextInt();
        	   System.out.println(i+"/"+a+"="+(i/a));
           } 
        	   
        	   
      }     
           
           
}
           
           
           
           
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      

