package com.wangmengyao;

public class y2 {
	//����һ������{9��15��24��36��78��51��94��62��57��42��}Ҫ����������Ԫ��
	public static void main(String[] args) {
		int [] arr={9,15,24,36,78,51,94,62,57,42};
		for(int t=0;t<arr.length;t++){
			if(t%2==0){
				System.out.print(arr[t]+"\t");
			}
		}
	}

}
