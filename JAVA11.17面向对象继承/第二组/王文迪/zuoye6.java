
public class zuoye6 {
	
	public static void main(String[] args) {
		
		for(int i = 7;i<=10000;i++){
			if(i%10==7 && (i/10)%10!=8 && (i/100)%10!=8 && i/1000!=8){
				System.out.println(i);
				continue;
			}else if(i%10!=8 && (i/10)%10==7 && (i/100)%10!=8 && i/1000!=8){
				System.out.println(i);
				continue;
			}else if(i%10!=8 && (i/10)%10!=8 && (i/100)%10==7 && i/1000!=8){
				System.out.println(i);
				continue;
			}else if(i%10!=8 && (i/10)%10!=8 && (i/100)%10!=8 && i/1000==7){
				System.out.println(i);
				continue;
			}
		}
		
	}

}
