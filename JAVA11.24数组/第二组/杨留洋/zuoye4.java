package com.zuoye;

public class zuoye4 {
	public static void main(String[] args) {
		/*
		 * ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
		 */
		int[] arr ={5,9,12,45,18,30};
		int sum = 0;
		
		for(int a=0;a<arr.length;a++){
			sum = sum+arr[a];
		}
		System.out.println(sum);
		//���ֵ
		int max=arr[0];
		for(int i=1 ;i<arr.length;i++){
				if(arr[i]>max){
					max=arr[i];
					
				}
			}
		System.out.println(max);
	//��Сֵ
		int min=arr[0];
		for(int j=1;j<arr.length;j++){
			if(arr[j]<min){
				min=arr[j];
			}
		}
		System.out.println(min);
	
	
	
	
	
	
		
		
		
	}
	
	
}
	
	
	


