package com.wangmengyao;

public class y4 {
	//����һ����������{5��9��12��45��18��30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ��Сֵ
	public static void main(String[] args) {
		int [] arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int mix=arr[0];
		for(int t=0;t<arr.length;t++){
			sum=sum+arr[t];
			if(max<arr[t]){
				max=arr[t];
			}
			if(mix>arr[t]){
				mix=arr[t];
			}
		}
		System.out.println("����Ԫ��֮��"+sum);
		System.out.println("���ֵ"+max);
		System.out.println("��Сֵ"+mix);
	}

}
