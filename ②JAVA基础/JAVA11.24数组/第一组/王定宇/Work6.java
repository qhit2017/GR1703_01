import java.util.Scanner;


public class Work6 {

	public static void main(String[] args) {
		//6 �Ӽ�������10���������Ӵ�С����
		Scanner sc = new Scanner(System.in);
			int[] arr = new int[10];
		for(int i=0; i<arr.length; i++){
			System.out.println("�������"+(i+1)+"����");
			arr[i]=sc.nextInt();
		}
	 
		for(int i=0; i<arr.length-1; i++){
			for(int j=i+1; j<arr.length; j++){
				if(arr[i]<arr[j]){
					int a = arr[i];
					arr[i]=arr[j];
					arr[j]=a;
				}
			}
		}
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i]+" ");
		}
		
	}
}
