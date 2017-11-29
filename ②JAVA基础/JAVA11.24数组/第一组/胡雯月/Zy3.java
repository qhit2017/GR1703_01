import java.util.Scanner;


public class Zy3 {
	//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]arr=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("请输入十个数");
			arr[a]=sc.nextInt();
			
		}
			for(int b=0;b<arr.length;b++){
			
			System.out.println(arr[b]+"\t");
		}
		
		
		
		
		
		
		
		
		
	}

}
