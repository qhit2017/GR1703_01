
public class zuoye5 {
	public static void main(String[] args) {
		//5 ��for �� while���ַ�������1~100֮�������ĺ�
		int sum =0;
		for(int t=1;t<=100;t++){
			if(t%2!=0){
				sum=t+sum;
			}
		}
		System.out.println(sum);
	}

}
