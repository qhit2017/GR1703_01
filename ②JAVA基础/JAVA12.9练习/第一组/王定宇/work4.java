package Work;

public class work4 {

	public static void main(String[] args) {
		
		/*
		 * 编程题1：

			定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出

		 */
		int[] arr = {1,3,5,6,5,6,7,5};
		for(int i=0; i<arr.length-1; i++){
			for(int j=i+1; j<arr.length; j++){
				if(arr[i]>arr[j]){
					int c =arr[i];
					arr[i]=arr[j];
					arr[j]=c;
					
				}
			}
		}
		for(int i=0; i<arr.length; i++){
			System.out.println(arr[i]);
		}
		
		
		
		
	}
	
}
