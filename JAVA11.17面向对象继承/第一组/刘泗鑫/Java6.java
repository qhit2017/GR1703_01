
public class Java6 {
	
	/*
	 * 6  输出0~10000之间，包含7且不包含8的所有数
	 */

	public static void main(String[] args) {
		
	for(int a = 1;a<=10000;a++){
		if(a/10000==7 || a/1000==7 || a/100==7 || a/10==7 || a==7){
			if(a/10000!=8 && a/1000!=8 && (a/100)%10!=8 && (a/10)%10!=8 && a%10!=8){
				System.out.println(a);
		}
			
		}
		
		}
	}
}
