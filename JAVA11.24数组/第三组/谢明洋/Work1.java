package Work;

public class Work1 {
	public static void main(String[] args) {
		//1 ����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
		
		int[] arr={8,51,63,21,47,12};
		System.out.println("�������:");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		System.out.println("���������");
		for(int i=arr.length-1;i>-1;i--){
			System.out.print(arr[i]+" ");
		}
	}

}
