
public class Zy4 {
	//4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	public static void main(String[] args) {
		int []arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			sum=sum+arr[a];
			
		}
		for(int b=1;b<arr.length;b++){
		if(max<arr[b]){
			max=arr[b];
		}
		if(min>arr[b]){
			min=arr[b];
		}
		}
		System.out.println(sum);
		System.out.println(max);
		System.out.println(min);
		
		}
		
		
		
		
		
		}	
	
	
