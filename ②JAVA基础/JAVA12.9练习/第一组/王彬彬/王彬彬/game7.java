package game;
//�����1��

//�������� Int[] arr = {1,3,5,6,5,6,7,5}; �������г��ֵĴ����������ĸ�

public class game7 {

	public static void main(String[] args) {
		
		
		 int[] arr = {1,3,5,6,5,6,7,5};
		 int c[]=new int[10];
		 for(int i=0;i<=9;i++){
			 int count=0;
			 for(int n:arr){
				 if(n==i){
					 count++;
				 }
			 }
			 c[i]=count;
		 }
		 int max=c[0];
		for(int i:c){
			max=max>i?max:i;
		}
		System.out.println("���ִ�������������");
		for(int i=0;i<c.length;i++){
			if(c[i]==max){
				System.out.println(i);
			}
		}
		
		
		
		
	}
	
}
