package comtsinghua;

public class work5 {
	public static void main(String[] args) {
		/*
		 * 5 ��for �� while���ַ�������1~100֮�������ĺ�
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
