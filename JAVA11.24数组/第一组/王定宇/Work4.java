
public class Work4 {

	public static void main(String[] args) {
		//4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
		int[] arr = {5,9,12,45,18,30};
		  int sum =0;
		  int max =arr[0];
		  int min =arr[0];
		for(int i=0; i<arr.length; i++){
			sum=sum+arr[i];
			
			if(max<arr[i]){
				max=arr[i];
				
			if(min>arr[i]){
				min=arr[i];
			}	
		}
		}	
		
		System.out.println("���ǣ�"+sum);
		System.out.println("���ֵ��"+max);
		System.out.println("��Сֵ��"+min);
	}
}
