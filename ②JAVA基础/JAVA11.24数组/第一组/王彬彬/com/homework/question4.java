package com.homework;
/*+
 * 4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
 */
public class question4 {

	public static void main(String[] args) {
		
		int arr[]={5,9,12,45,18,30};
		int sum=0;
		for(int a =0;a<arr.length;a++){
			sum=sum+arr[a];
		}
		System.out.println(sum);
		
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			max=max>arr[a]?max:arr[a];
			min=min<arr[a]?min:arr[a];
		}
		System.out.println("���ֵ��"+max);
		System.out.println("��Сֵ��"+min);
		
		
		
		
	}
	
}
