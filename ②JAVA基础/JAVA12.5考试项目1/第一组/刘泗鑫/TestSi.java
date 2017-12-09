import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class TestSi {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<StudentInfo> list = new ArrayList<StudentInfo>();
		
		while(true){
			System.out.println("1.录入考生的高考信息  2.显示所有考生信息  3.查询最高分  4.退出功能");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("录入考生的高考信息");
				String str = sc.next();
				String[] arr = str.split(",");
				StudentInfo si = new StudentInfo();
				si.setName(arr[0]);
				si.setNember(arr[1]);
				si.setLanguage(Integer.parseInt(arr[2]));
				si.setMath(Integer.parseInt(arr[3]));
				si.setEnglish(Integer.parseInt(arr[4]));
				si.setTotal(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(si);
				System.out.println("录入成功！");
			}else if(n==2){
				System.out.println("查询所有考生信息");
				for(StudentInfo si:list){
					si.info();
				}
				System.out.println("查询成功！");
			}else if(n==3){
				System.out.println("查询最高分");
				while(true){
					System.out.println("1.打印总分最高分  2.打印数学最高分  3.打印语文最高分  4.打印英语最高分  5.返回上一层");
					int nem=sc.nextInt();
					if(nem==1){
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getTotal()){
								max=si.getTotal();
							}
						}
						for(int i =0;i<list.size();i++){
							StudentInfo si = list.get(i);
							if(max==si.getTotal()){
								System.out.println("姓名："+si.getName()+",总分最高分："+max);
							}
						}
					}else if(nem==2){
						System.out.println("打印数学最高分");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getMath()){
								max=si.getMath();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("姓名："+s.getName()+",数学最高分："+max);
							}
						}
					}else if(nem==3){
						System.out.println("打印语文最高分");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getLanguage()){
								max=si.getLanguage();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("姓名："+s.getName()+",语文最高分："+max);
							}
						}
					}else if(nem==4){
						System.out.println("打印英语最高分");
						int max=0;
						for(StudentInfo si:list){
							if(max<si.getEnglish()){
								max=si.getEnglish();
							}
						}
						for(StudentInfo s:list){
							if(max==s.getMath()){
								System.out.println("姓名："+s.getName()+",英语最高分："+max);
							}
						}
					}else if(nem==5){
						System.out.println("返回上一层");
						break;
					}else{
						System.out.println("您输入的数字不规范，请重新输入！");
					}
				}
			}else if(n==4){
				System.out.println("程序运行结束");
				break;
			}else{
				System.out.println("您输入的数字不规范，请重新输入！");
			}
		}
		
	}

}
