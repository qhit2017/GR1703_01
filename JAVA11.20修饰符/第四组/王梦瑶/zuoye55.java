
public class zuoye55 {
	public static void main(String[] args) {
		int t=1;
		int sum=0;
		while(t<=100){
			if(t%2!=0){
				sum=t+sum;
			}
			t++;
		}
		System.out.println(sum);
	}

}
