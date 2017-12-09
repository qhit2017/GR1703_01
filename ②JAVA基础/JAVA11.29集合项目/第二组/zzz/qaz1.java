package zzz;

public class qaz1 {
     private  String  name;
     private  int  nl;
     private  char  xb;
     private final String  gj="中国";
     private  String  lz;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNl() {
		return nl;
	}
	public void setNl(int nl) {
		this.nl = nl;
	}
	public char getXb() {
		return xb;
	}
	public void setXb(char xb) {
		this.xb = xb;
	}
	public String getGj() {
		return gj;
	}
	
	public String getLz() {                     
		return lz;
	}
	public void setLz(String lz) {
		this.lz = lz;
	}
    public final void  inof(){
    	 System.out.println("我是:"+name+"\t今年:"+nl+"岁\t性别:"+xb+"我是"+gj+"人\t来自"+lz);
     }
}
