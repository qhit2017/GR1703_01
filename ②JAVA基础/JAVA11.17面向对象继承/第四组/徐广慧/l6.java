
public class l6 {
	//输出0~10000之间，包含7且不包含8的所有数
	public static void main(String[] args) {
		for(int i=1;i<=10000;i++){
			int a=i%10;
			int b=i/10%10;
			int c=i/100%10;
			int d=i/1000%10;
			int e=i/10000%10;
			if((a==7||b==7||c==7||d==7||e==7)&&(a!=8&&b!=8&&c!=8&&d!=8&&e!=8)){
				System.out.println(i);
			}
		}
	}

}
