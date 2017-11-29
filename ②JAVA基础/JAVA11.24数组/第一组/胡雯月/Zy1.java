
public class Zy1 {
	//1 定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
	
	public static void main(String[] args) {
		int[]arr={8,51,63,21,47,12};
		System.out.println("正这输出");
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
			
		}
		System.out.println();
		System.out.println("反正输出");
		for(int b=arr.length-1;b>=0;b--){
			System.out.print(arr[b]+"\t");
		}
		
		
		
		
		
		
		
		
	}

}
