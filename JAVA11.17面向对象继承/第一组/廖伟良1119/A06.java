
public class A06 {
	/*
	 * ���0~10000֮��,����7�Ҳ�����8��������
	 */
	public static void main(String[] args) {
		for(int i =1;i<=10000;i++){
			if(i%7==0){
				System.out.println(i);
				continue;
				}
			int t =i;
			while(t>=10){
				if(t%10==7&&t/10!=8){
					System.out.println(i);
					break;
				}
				else{
					t=t/10;
				}
				if(t==7&&t!=8){
					System.out.println(i);
				}
			}
		}
	}
}
