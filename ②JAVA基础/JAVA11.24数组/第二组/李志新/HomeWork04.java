package com.lizhixin;
//����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
public class HomeWork04 {
	public static void main(String[] args) {
		
		int[] arr ={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int i=1;i<=arr.length;i++){
			sum=sum+arr[i-1];
		}
			
		System.out.println("��Ԫ��֮��Ϊ��"+sum);
		
		for(int j=1;j<=arr.length-1;j++){
			if(max<arr[j]){
				max=arr[j];
			}if(min>arr[j]){
				min=arr[j];
			}
			}
		System.out.println("���ֵΪ��"+max);
		System.out.println("��СֵΪ��"+min);
	

}
}

