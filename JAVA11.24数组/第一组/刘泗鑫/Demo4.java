
public class Demo4 {
	
	/*
	 * 4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	 */

	public static void main(String[] args) {
		
		int[] arr ={5,9,12,45,18,30};
		
		int sum = 0;
		for(int i =0;i<arr.length;i++){
			sum = sum+arr[i];
		}
		System.out.println("����ĺ��ǣ�"+sum);
		
		int max =arr[0];
		int min =arr[0];
		for(int j =1;j<arr.length;j++){
			if(max<arr[j]){
				max = arr[j];
			}
			if(min>arr[j]){
				min = arr[j];
			}
		}
		System.out.println("���ֵ�ǣ�"+max);
		System.out.println("��Сֵ�ǣ�"+min);
	}
	
}
