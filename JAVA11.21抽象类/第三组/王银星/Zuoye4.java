package zuoye1121;

public class Zuoye4 {
	/*
	 * 4�������0~10000֮����3��ͷ����
	 */
	public static void main(String[] args) {
		for(int i=0;i<=10000;i++){
			if(i%10==3||(i/10)%10==3||(i/100)%10==3||(i/1000)%10==3){
				System.out.println(i);
			}
		}
	}

}
