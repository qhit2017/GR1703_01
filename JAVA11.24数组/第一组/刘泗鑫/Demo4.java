
public class Demo4 {
	
	/*
	 * 4 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	 */

	public static void main(String[] args) {
		
		int[] arr ={5,9,12,45,18,30};
		
		int sum = 0;
		for(int i =0;i<arr.length;i++){
			sum = sum+arr[i];
		}
		System.out.println("数组的和是："+sum);
		
		int max =arr[0];
		int min =arr[0];
		for(int j =1;j<arr.length;j++){
			if(max<arr[j]){
				max = arr[j];
			}
			if(min>arr[j]){
				min = arr[j];
			}
		}
		System.out.println("最大值是："+max);
		System.out.println("最小值是："+min);
	}
	
}
