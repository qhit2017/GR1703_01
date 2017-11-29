
public class A04 {
	public static void main(String[] args) {
		for(int i =1;i<=10000;i++){
			if(i==3){
				System.out.println(i);
				continue;
			}
			int t =i;
			while(t>=10){
				if(t/10==3){
					System.out.println(i);
					break;
				}
				else{
					t=t/10;
				}
			
			}
		}
	}
}
