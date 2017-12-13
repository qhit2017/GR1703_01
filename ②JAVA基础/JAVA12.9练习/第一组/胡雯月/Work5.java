

public class Work5 {
	public static void main(String[] args) {
		for(int t=1;t<=9;t++){
			
			for(int i=1;i<=t;i++){
				if(i==3&&t==3){
					continue;
				}
				
				System.out.print(t+"*"+i+"="+(t*i)+"\t");
			}
			System.out.println();
		}
	}

}
