package com.suzhu;

public class dome4 {
//4 ����һ����������{5,9,12,45,18,30}��Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	public static void main(String[] args) {
		int [] arr={5,9,12,45,18,30};
		int sum=0;
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
		}
		System.out.println("����"+sum);
		int max=0;
		for(int j=0;j<arr.length-5;j++){
			max=max+arr[j];
		}
			System.out.println("��Сֵ"+max);
		int min=0;
		for(int g=0;g>arr.length-5;g--){
			min=min+arr[g];
		}
			System.out.println("���ֵ��"+min);
	}
}
