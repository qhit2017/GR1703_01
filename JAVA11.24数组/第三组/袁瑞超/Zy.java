
public class l1 {
	//����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
	public static void main(String[] args) {
		int []arr={8,51,63,21,47,12};
		System.out.println("���������");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println();
		System.out.println("���������");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+"\t");
		}
	}

}
