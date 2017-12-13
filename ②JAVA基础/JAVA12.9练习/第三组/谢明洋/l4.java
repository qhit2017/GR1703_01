package 练习;

public class l4 {
	public static void main(String[] args) {
		//定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出
		
		int [] arr={45,98,11,56,48,25};
		for(int i=0; i<arr.length;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[j]<arr[i]){
					int a=arr[j];
					arr[j]=arr[i];
					arr[i]=a;
				}
			}
			System.out.println(arr[i]);
		}
	}

}
