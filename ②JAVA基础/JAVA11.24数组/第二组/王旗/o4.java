package Sunday;
//4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
public class o4 {
 public static void main(String[] args) {
	int []arr={5,9,12,45,18,30};
	int sum=0;
	for (int a=0;a<arr.length;a++){
		sum=sum+arr[a];
	}
	System.out.println("����������Ԫ�صĺ�"+sum);
	int max=arr[0];
	for(int a=1;a<arr.length;a++){
		if(max<arr[a]){
			max=arr[a];
		}
		
	}
	    System.out.println(max);
	int min=arr[0];
	for(int a=1;a<arr.length;a++){
		if (min>arr[a]){
			min=arr[a];
		}
		
	}
	System.out.println(min);
}
}