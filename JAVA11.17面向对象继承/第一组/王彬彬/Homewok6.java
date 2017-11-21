package practic;

public class Homewok6 {

	public static void main(String[] args) {
		
		a:for(int a = 1; a<=10000;a++){
			for(int b=a;b>0;b=b/10){
				if(b%10==8){
					continue a;
				}
			}
			for(int c=a;c>0;c=c/10){
				if(c%10==7){
					System.out.println(a);
					break;
				}
			}
		}
		
		
		
	}
	
	
}
