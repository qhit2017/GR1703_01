
public class Doem1 {
	
	/*
	 * 1 ����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
	 */
	public static void main(String[] args) {
		
	int[] arr = {8,51,63,21,47,12};
	
	System.out.println("���������Ԫ���ǣ�");
	for(int a = 0;a<arr.length;a++){
		System.out.print(arr[a]+"\t");
	}
	
	System.out.println();
	System.out.println("���������Ԫ���ǣ�");
	for(int b = arr.length-1;b>=0;b--){
		System.out.print(arr[b]+"\t");
	}
	
	}
}
