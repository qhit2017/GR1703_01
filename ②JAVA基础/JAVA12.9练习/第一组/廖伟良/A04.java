package hw1209;

public class A04 {
	/*
	 * �������� int[] arr = {1,3,5,6,5,6,7,5}���������С�������򣬲����.
	 */
	public static void main(String[] args) {
		int[]arr = {1,3,5,6,5,6,7,5};
		for(int i=0;i<arr.length-1;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]>arr[j]){
					int t = arr[i];
					arr[i] = arr[j];
					arr[j] = t;
				}
			}
		}
		for(int x:arr){
		System.out.print(x+" ");
		}
	}
}