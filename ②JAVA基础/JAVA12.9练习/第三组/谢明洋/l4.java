package ��ϰ;

public class l4 {
	public static void main(String[] args) {
		//�������� Int[] arr = {1,3,5,6,5,6,7,5}���������С�������򣬲����
		
		int [] arr={45,98,11,56,48,25};
		for(int i=0; i<arr.length;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[j]<arr[i]){
					int a=arr[j];
					arr[j]=arr[i];
					arr[i]=a;
				}
			}
			System.out.println(arr[i]);
		}
	}

}
