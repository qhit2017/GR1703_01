package zuoye26;

public class zuoye4 {
//����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	public static void main(String[] args) {
		int[] arr={5,9,12,45,18,30}; 
		int b=0;
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			b=b+arr[a];
			if(max<arr[a]){
				
				
				max=arr[a];
				
				
			}
			if(min>arr[a]){
				min=arr[a];
			}
		}
		System.out.println(max);
		System.out.println(min);
		System.out.println(b);
		
		
	}
	
	
	
	
}
