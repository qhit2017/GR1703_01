package game;

public class game6 {
//���1~10000֮����8��ͷ����7��β���ܱ�3��������
	public static void main(String[] args) {
		
		for(int i=1;i<=10000;i++){
			String str=i+"";
			if(str.charAt(0)=='8'&&str.charAt(str.length()-1)=='7'&&i%3==0){
				System.out.println(i);
			}
		}
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
}
