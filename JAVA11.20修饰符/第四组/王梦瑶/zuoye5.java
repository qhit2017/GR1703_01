
public class zuoye5 {
	public static void main(String[] args) {
		//5 用for 和 while两种方法计算1~100之间奇数的和
		int sum =0;
		for(int t=1;t<=100;t++){
			if(t%2!=0){
				sum=t+sum;
			}
		}
		System.out.println(sum);
	}

}
