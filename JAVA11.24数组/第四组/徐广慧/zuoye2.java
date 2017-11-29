package zuoye26;

public class zuoye2 {
//定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
	public static void main(String[] args) {
		int[] arr={9,15,24,36,78,51,94,62,57,42};
		for(int a =0;a<arr.length;a++){
			if(arr[a]%2!=0){
				System.out.print(a+"\t");
			}
			
		}
		
		
		
	}
	
	
}
