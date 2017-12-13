package zy;

public class zuoye5 {
	public static void main(String[] args) {
		int []arr={7,8,9,12,5};
		int max=arr[0];
		int min=0;
		for(int i=1;i<arr.length;i++){
			if(arr[i]>=max){
				max=arr[i];
		
			}
		}
		System.out.println(max);
		
		
	}
}
