package Work;

public class Work4 {
	public static void main(String[] args) {
		//4 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
		
		int[] arr={5,9,12,45,18,30};
		int sum=0;
		int max=5;
		int min=5;
		
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
		}
		System.out.println("和为"+sum);
		for(int i=0;i<arr.length;i++){
			if(max<arr[i]){						
				max=arr[i];					
		}
		     if(min>arr[i])	{
		    	 min=arr[i];
		     }

	}
		System.out.println(max);		
		System.out.println(min);		
	}

	}
