import java.util.Scanner;


public class Demo6 {
	
	/*
	 * 6 从键盘输入10个数，并从大到小排序
	 */

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int a = 1;a<=arr.length;a++){
			System.out.println("请输入第"+a+"个数：");
			arr[a-1] = sc.nextInt();
		}
		for(int i = 0;i<arr.length;i++){
			for(int j =i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int t = arr[i];
					arr[i]=arr[j];
					arr[j]=t;
				}
			}
		}
		System.out.println("从大到小排序是：");
		for(int b = 0;b<arr.length;b++){
			System.out.print(arr[b]+"\t");
			
		}
	}
	
}
