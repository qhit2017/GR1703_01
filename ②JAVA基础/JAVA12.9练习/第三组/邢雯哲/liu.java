package l;

public class liu {

	//输出1~10000之间以8开头，以7结尾且能被3整除的数
	
     public static void main(String[] args) {
		
    	 for(int i=1;i<=10000;i++){
    		 String a=""+i;
    		 if(a.charAt(0)=='8' && a.charAt(a.length()-1)=='7'&& i%3==0){
    			 System.out.println(i);
    		 }
    	 }
	}
}
