package com.zuoye;

public class Zuoye4 {
	/*4 ����һ����������{5,9,12,45,18,30}��
	 * Ҫ���ӡ������������Ԫ��֮�ͣ�����ӡ�����ֵ����Сֵ��
	 * 
	 */
	public static void main(String[] args) {
		int []sz={5,9,12,45,18,30};
		int he=0;
		int da=sz[0];
		int min=sz[0];
		for(int i=0;i<sz.length;i++){
			he=he+sz[i];
			if(da<sz[i]){
				da=sz[i];
				
				if(min>sz[i]){
					min=sz[i];
				}
			}
		}
		System.out.println("����Ԫ�غ��ǣ�"+he);
		System.out.println("���ֵ�ǣ�"+da);
		System.out.println("��Сֵ�ǣ�"+min);
	}

}
