package xiangm2;

import java.util.List;
import java.util.Scanner;

public class massageshi implements massagejei {

	@Override
	public void add(List<massage> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("录入考生的高考信息:姓名，编号，语文成绩，数学成绩，英语成绩，总成绩");
		String s=sc.next();
		String []arr=s.split("，");
		massage m=new massage();
		m.setName(arr[0]);
		m.setNo(arr[1]);
		m.setChinese(Integer.parseInt(arr[2]));
		m.setMath(Integer.parseInt(arr[3]));
		m.setEnglish(Integer.parseInt(arr[4]));
		m.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));	
		list.add(m);
		System.out.println("保存成功");
		
	}

	@Override
	public void fiandall(List<massage> list) {
		// TODO Auto-generated method stub
		System.out.println("显示所有考生信息");
		for(massage i:list ){
			i.info();
		}
	}

	@Override
	public void fiandzui(List<massage> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("查询最高分, 包括: 总分最高分 和 单科最高分");
		while(true){
			System.out.println("1.总分最高分2.语文最高分3.数学最高分4.英语最高分5.退出程序");
			int j=sc.nextInt();
			if(j==1){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getTotal()){
						l=n.getTotal();
					}
					if(l==n.getTotal()){
						 g=n.getName();
					}
					
				}
				System.out.println("总分的最高分是："+l+"他的名字是："+g);
			}else if(j==2){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getChinese()){
						l=n.getChinese();
					}
					if(l==n.getChinese()){
						 g=n.getName();
					}
					
				}
				System.out.println("语文的最高分是"+l+"他的名字是"+g+"");
				
				
			}else if(j==3){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getMath()){
						l=n.getMath();
					}
					if(l==n.getMath()){
						 g=n.getName();
					}
					
				}
				System.out.println("数学的最高分是"+l+"他的名字是"+g);
				
			}else if(j==4){
				int l=0;
				String g="";
				for(massage n:list){
					if(l<n.getEnglish()){
						l=n.getEnglish();
					}
					if(l==n.getEnglish()){
						 g=n.getName();
					}
					
				}
				System.out.println("英语的最高分是"+l+"他的名字是"+g);
				
			}else if(j==5){
				System.out.println("返回上一层");
				break;
			}else{
				System.out.println("你输入的数字不规范");
			}
		}
	}

}
