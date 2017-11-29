package zuoye2;

public class w5 {

	public static void main(String[] args) {
		
		int a=1;
		int sum=0;
		while(a<=100){
			if(a%2!=0){
				sum=sum+a;
			}
			a++;
		}
		System.out.println(sum);
	}
	
}
