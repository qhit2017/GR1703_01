package WORK;

public class Work4 {
	public static void main(String[] args) {
		//4�������0~10000֮����3��ͷ����
		
		for(int i=1;i<=10000;i++){
			if(i==3){
				System.out.println(i);				
			}else if(i>=30&&i<40&&i/10==3){
				System.out.println(i);
			}else if(i>=300&&i<400&&i/100==3){
				System.out.println(i);
			} else if(i>=3000&&i<4000&&i/1000==3){
				System.out.println(i);
			}
		
		}
	}

}
