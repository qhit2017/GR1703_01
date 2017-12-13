

public class Work4{
	//输出1~10000之间以8开头，以7结尾且能被3整除的数
	public static void main(String[] args) {
		for(int t=1;t<=10000;t++){
			if(t>=10&&t<100&&t/10==8&&t%10==7&&t%3==0){
				System.out.println(t);
				
			}
			if(t>=100&&t<1000&&t/100==8&&t%10==7&&t%3==0){
				System.out.println(t);
			}
			if(t>=1000&&t<10000&&t/1000==8&&t%10==7&&t%3==0){
				System.out.println(t);
			}
			    
		}
	}

}
