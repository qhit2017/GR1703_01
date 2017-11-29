import java.util.Scanner;


public class l3 {
	//从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
	public static void main(String[] args) {
		int []arr=new int[10];
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		for(int i=0;i<arr.length;i++){
			System.out.println("arr["+i+"]="+arr[i]);
		}
	
	}

}
