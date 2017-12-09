import java.util.List;
import java.util.Scanner;


public class StudentItest implements StudentImp{
	
	@Override
	public void zhengjia(List<Infor>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("请输入学生信息：eg：姓名,性别,年龄,住址");
		Infor a = new Infor();
		String s = sc.next();
		String[] arr = s.split(",");
			a.setName(arr[0]);
			a.setSex(arr[1].charAt(0));
			a.setAge(Integer.parseInt(arr[2]));
			a.setZhuzhi(arr[3]);
			a.info();
			list.add(a);
		System.out.println("增加成功");
		System.out.println();
	}

	@Override
	public void chaxun(List<Infor>list) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("查询所有学生:");
		for(Infor a : list){
			a.info();
		}
		System.out.println();
	}

	@Override
	public void namechaxun(List<Infor>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("按照姓名查询学生信息请输入姓名:");				
		String s = sc.next();
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			if(s.equals(a.getName())){
				a.info();
				break;
			}	 
		}
		System.out.println();
	}

	@Override
	public void deleteStudent(List<Infor> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println();
		System.out.println("删除学生:");	
		String s = sc.next();
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			if(s.equals(a.getName())){
				list.remove(a);
				break;
			}
		}
		System.out.println("删除成功");
		System.out.println();
		
	}

	@Override
	public void xiugai(List<Infor> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入修改内容:eg：姓名,性别,年龄,住址");
		String s = sc.next();
		String[] arr = s.split(",");
		for(int i = 0;i<list.size();i++){
			Infor a = list.get(i);
			a.setName(arr[0]);
			a.setSex(arr[1].charAt(0)); //转换成char类型
			a.setAge(Integer.parseInt(arr[2])); //转换成int类型
			a.setZhuzhi(arr[3]);
			System.out.println("修改成功");
			break;
		}
		System.out.println();
	}

}
