package zailian;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class studentshi implements stujei{

	@Override
	public void add(List<student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("输入学生的姓名，编号，语文成绩，数学成绩，英语成绩");
		String str=sc.next();
		String []arr=str.split("，");
		student s=new student();
		s.setName(arr[0]);
		s.setBian(Integer.parseInt(arr[1]));
		s.setChinese(Integer.parseInt(arr[2]));
		s.setMath(Integer.parseInt(arr[3]));
		s.setYingyu(Integer.parseInt(arr[4]));
		s.setZong(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		list.add(s);
		System.out.println("增加成功");
		
	}

	@Override
	public void fiandall(List<student> list) {
		// TODO Auto-generated method stub
		for(int i=0;i<list.size();i++){
			student d=list.get(i);
			d.sofi();
		}
	}

	@Override
	public void fiandzui(List<student> list,Scanner sc) {
		// TODO Auto-generated method stub
		while(true){
			System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
			int r=sc.nextInt();
			if(r==1){
				System.out.println("打印总分最高分");
				int []arr=new int [list.size()];
				for(int j=0;j<list.size();j++){
					arr[j]=list.get(j).getZong();
					
				}int maxzui=arr[0];
				
				for(int k=0;k<list.size();k++){
					if(maxzui<arr[k]){
						maxzui=arr[k];
					}
				}
				System.out.println("总分最高分是"+maxzui);
				
			}else if(r==2){
				System.out.println("打印数学最高分");
				int []arr=new int[list.size()];
				for(int j=0;j<list.size();j++){
					arr[j]=list.get(j).getMath();
					
				}int maxshu=arr[0];
				
				for(int k=0;k<list.size();k++){
					if(maxshu<arr[k]){
						maxshu=arr[k];
					}
				}
				System.out.println("数学最高分是"+maxshu);
				
				
			}else if(r==3){
				System.out.println("语文最高分");
				int []arr=new int [list.size()];
				for(int j=0;j<list.size();j++){
					arr[j]=list.get(j).getChinese();
					
				}int maxyu=arr[0];
				for(int k=0;k<list.size();k++){
					if(maxyu<arr[k]){
						maxyu=arr[k];
					}
				}System.out.println("语文最高分"+maxyu);
			}else if(r==4){
				int arr[]=new int[list.size()];
				for(int j=0;j<list.size();j++){
					arr[j]=list.get(j).getYingyu();
				}
				int maxyin=arr[0];
				for(int k=0;k<list.size();k++){
					if(maxyin<arr[k]){
						maxyin=arr[k];
					}
				}System.out.println("英语最高分"+maxyin);
				
			}else if(r==5){
				System.out.println("退出");
				break;
				
			}
			
		}
	
	}

	
	
}
