package zuoye;

import java.util.Scanner;

public class work6 {
	/*
	 * 输出0~10000之间，包含7且不包含8的所有数
	 * 
	 */
     public static void main(String[] args) {
		
    	 
    	 for(int a=0;a<=10000;a++){
    		 
    		 int ge=a%10;
    		 
    		 int shi=a/10%10;
    		 
    		 int bai=a/100%10;
    		 
    		 int qian=a/1000%10;
    		 
    		 int wan=a/10000%10;
    		 
    		if((ge==7 || shi==7 || bai==7 || qian==7 || wan==7 )&&(ge!=8 && shi!=8 && bai!=8 && qian!=8 && wan!=8) ){ 
    			
    	       System.out.println(a);
    	 
	}
	
    	 }
     }
	
	
}
