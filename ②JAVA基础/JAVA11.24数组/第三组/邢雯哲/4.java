package zuoye1;

public class z4 {
/*
 * ����һ����������{5��9��12��45��18��30}��Ҫ���ӡ������������Ԫ��֮�ͣ�
 * ����ӡ�����ֵ����Сֵ
 */
	public static void main(String[] args) {
		int []arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			sum=arr[a]+sum;
			if(max<arr[a]){
				max=arr[a];
			}
			if(min>arr[a]){
				min=arr[a];
			}
		}
		System.out.println(sum);
		System.out.println(max);
		System.out.println(min);
		
		
	}
}
