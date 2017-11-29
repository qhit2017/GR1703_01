package com.wangmengyao;

public class y2 {
	//定义一个数组{9，15，24，36，78，51，94，62，57，42，}要求输出第奇个元素
	public static void main(String[] args) {
		int [] arr={9,15,24,36,78,51,94,62,57,42};
		for(int t=0;t<arr.length;t++){
			if(t%2==0){
				System.out.print(arr[t]+"\t");
			}
		}
	}

}
