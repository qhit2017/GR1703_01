package zuoye21;

public class zuoye4 {

	//�����0~10000֮����3��ͷ����
	public static void main(String[] args) {
		
		for(int a=0;a<=10000;a++){
			if(a<10&&a%10==3){
				System.out.println(a);
			}else if(a<100&&a/10==3){
				System.out.println(a);
			}else if(a<1000&&a/100==3){
				System.out.println(a);
			}else if(a<10000&&a/1000==3){
				System.out.println(a);
			}
		}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}