
public class zuoye3 {
	public static void main(String[] args) {
		/*
		 * 6  输出0~10000之间，包含7且不包含8的所有数
		 * 
		 */
		for(int i=0;i<10000;i++){
			if((i%1000)/10==7||(i%100)/10==7||(i%10)/10==7||i%10==7){
				if((i/1000)%10!=8&&(i/100)%10!=8&&(i/10)%10!=8&&i%10!=8){
					System.out.println(i);
				}
			}
		}
	}

}
