
public class T1 {
	public static void main(String[] args) {
		
		//定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出
		int [] arr={1,5,48,6,7,98,15};
		int max=arr[0];
		for(int i=0;i<arr.length-1;i++){
			for(int j=i+1;j<arr.length;j++){
				if(max<arr[j]){
					max=arr[j];
				}
			}
		}
		System.out.println("最大值为："+max);
			
	}

}
