package l;

public class liu {

	//���1~10000֮����8��ͷ����7��β���ܱ�3��������
	
     public static void main(String[] args) {
		
    	 for(int i=1;i<=10000;i++){
    		 String a=""+i;
    		 if(a.charAt(0)=='8' && a.charAt(a.length()-1)=='7'&& i%3==0){
    			 System.out.println(i);
    		 }
    	 }
	}
}
