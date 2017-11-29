package Home_work;

public class TI_4 {
	
	public static void main(String[] args) {
		
		for(int i=1;i<=10000;i++){
			if(i/10==3){
				System.out.println(i);
				continue;
			}else if(i/100==3){
				System.out.println(i);
				continue;
			}else if(i/1000==3){
				System.out.println(i);
			}
		}

	}
	

}
