
public class T3 {
	//�������� int [] arr = {7,8,9,12,5}; �����������ֵ�Լ���Сֵ
	public static void main(String[] args) {
		
		int[]  arr={1,8,45,38,9,7,68,4};
		int max=arr[0];
		int min=arr[0];
		for(int i: arr){
			if(i>max){
				max=i;
			if(i<min){
				min=i;
				}
			}
		}
		System.out.println("���ֵΪ��"+max);
		System.out.println("��СֵΪ��"+min);
	}

}
