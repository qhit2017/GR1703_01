package com.lizhixin;
//����һ������{9,15,24,36,78,51,94,62,57,42} Ҫ�������������Ԫ��
public class HomeWork02 {
	public static void main(String[] args) {
		
		int[] arr={9,15,24,36,78,51,94,62,57,42};
		System.out.println("��������Ԫ��Ϊ��");
		for(int i=1;i<=arr.length;i++){
			if((i-1)%2==0){
				System.out.print(arr[i-1]+"\t");
			}
		}
		
		
	}

}
