package t28;

public class lianxi1 {
  private String  name;
  private  char xb;
  private int age;
  private String dz;

  public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public char getXb() {
	return xb;
}

public void setXb(char xb) {
	this.xb = xb;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getDz() {
	return dz;
}

public void setDz(String dz) {
	this.dz = dz;
}

public void info(){
	  System.out.println("我叫"+name+"性别是"+xb+"年龄是"+age+"地址在"+dz);
  }
}
