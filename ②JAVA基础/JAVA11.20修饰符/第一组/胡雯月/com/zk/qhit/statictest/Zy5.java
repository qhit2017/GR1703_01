

public class Zy5 {
	
	public static void main(String[] args) {
		
		int sum = 0;
		int sum2 = 0;
		int n = 1;
		for(int i=1;i<=100;i++){
			if(i%2!=0){
				sum = sum+i;
			}
		}
		System.out.println(sum);
		while(n<=100){
			if(n%2!=0){
				sum2 = sum2+n;
			}
			n++;
		}
	
		System.out.println(sum2);
	}

}
