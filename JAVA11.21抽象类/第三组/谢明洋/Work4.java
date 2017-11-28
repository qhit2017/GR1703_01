package WORK;

public class Work4 {
	public static void main(String[] args) {
		//4、请输出0~10000之间以3开头的数
		
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
