package ��ϰ;

public class l8 {
	public static void main(String[] args) {
		///�������� int [] arr = {7,8,9,12,5}; �����������ֵ�Լ���Сֵ
		int [] arr={16,15,25,74,72};
		for(int i=0;i<arr.length; i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[j]<arr[i]){
					int a=arr[j];
					arr[j]=arr[i];
					arr[i]=a;
				}
			}
		}
		System.out.println(arr[0]);
		System.out.println(arr[arr.length-1]);
	
	}

}
