package com.lizhixin;
//����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
public class HomeWork01 {
	public static void main(String[] args) {
		
	System.out.println("���������");
	int[] arr = {8,51,63,21,47,12};  //�������
	for(int i=1;i<=arr.length;i++){
		System.out.print(arr[i-1]+"\t");
	}
	System.out.println();
	System.out.println("���������");
	for(int i=arr.length-1;i>=0;i--){
		System.out.print(arr[i]+"\t");
	}
	

}
}