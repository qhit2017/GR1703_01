package Work;

public class Work2 {
	public static void main(String[] args) {
		
		//2 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
		
		int[] arr={9,15,24,36,78,51,94,62,57,42};
		
		for(int i=0;i<arr.length-1;i++){
			
			if(arr[i]%2!=0){
				System.out.println(arr[i]);
			}
		}
	}

}
