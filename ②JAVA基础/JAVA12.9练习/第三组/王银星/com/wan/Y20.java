package com.wan;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Y20 {
	//�������� Int[] arr = {1,3,5,6,5,6,7,5}; �������г��ֵĴ����������ĸ�
	public static void main(String[] args) {
		int[] arr = {1,3,5,6,5,6,7,5,5,6,9}; 
	/*	for(int q=0;q<10;q++){
			int r=0;
			for(int w:arr){
				if(q==w){
					r++;
				}
			}
			System.out.println(q+"�Ĵ�����"+r);
		}*/
		
	/*	Arrays.sort(arr);
		for(int j:arr){
			System.out.print(j);
			
		}*/
		
		int []arr1=new int[10];
		for(int i=0;i<=9;i++){
				arr1[i]=0;
			for(int j:arr){
				if(i==j){
					arr1[i]++;
				}
			}
			
		}
		int sum=arr1[0];
		for(int k:arr1){
			if(sum<k){
				sum=k;
			}
		}
		for(int k=0;k<arr1.length;k++){
			if(arr1[k]==sum){
				System.out.println(k);
			}
		}
		
		
	}

}
