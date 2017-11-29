package zuoye26;

public class zuoye4 {
//定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	public static void main(String[] args) {
		int[] arr={5,9,12,45,18,30}; 
		int b=0;
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			b=b+arr[a];
			if(max<arr[a]){
				
				
				max=arr[a];
				
				
			}
			if(min>arr[a]){
				min=arr[a];
			}
		}
		System.out.println(max);
		System.out.println(min);
		System.out.println(b);
		
		
	}
	
	
	
	
}
