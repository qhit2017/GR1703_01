package com.ketang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San s=new Si();
		while(true){
			System.out.println("1:	¼�뿼���ĸ߿���Ϣ��"
					+ "2	:��ʾ���п�����Ϣ��3:��ѯ��߷֣� 4:�˳�");
			int sum=sc.nextInt();
			if(sum==1){
				s.yi(jihe, sc);
			}else if(sum==2){
				s.er(jihe);
			}else if(sum==3){
				s.san(jihe, sc);
			}else if(sum==4){
				System.out.println("�˳���");
				break;
			}else{
				System.out.println("�������ֲ��淶�������䣡");
			}
		}
	}

}
