package comtsinghua;

public class work5 {
	public static void main(String[] args) {
		/*
		 * 5 用for 和 while两种方法计算1~100之间奇数的和
		 */
		int sum=0;
		
		for(int i=1;i<=100;i++){
			
			if(i%2!=0){
				sum=sum+i;
			}
		}
		System.out.println(sum);
		
	}

}
