
public class Java6 {
	
	/*
	 * 6  ���0~10000֮�䣬����7�Ҳ�����8��������
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
