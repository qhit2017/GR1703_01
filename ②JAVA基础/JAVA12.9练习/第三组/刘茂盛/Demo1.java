package com.lianxi1211;

public class Demo1 {
	//定义数组 Int[] arr = {1,3,5,6,5,6,7,5,7,7,7}; 求数组中出现的次数最多的是哪个
	public static void main(String[] args) {
		int [] arr = {1,3,5,6,5,7,5,6,7,7,7};
		int []arr2=new int[10];
		for(int i=0;i<10;i++){
			for(int a=0;a<arr.length;a++){
				if(i==arr[a]){
					arr2[i]++;
				}
			}
		}
		int max=-1;
		for(int b:arr2){
			if(max<b){
				max=b;
			}
		}
		for(int v=0;v<arr2.length;v++){
			if(arr2[v]==max){
				System.out.println(v);
			}
		}
		
	}

}
