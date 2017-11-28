package com.zueye;

public class test {
	public static void main(String[] args) {
       tixing t=new tixing();
       t.setGao(5);
       t.setMianji(25);
       t.setShangbian(8);
       t.setXiabian(2);
       t.setZhouchang(15);
       t.mianji();
       t.zhouchang();
       
       zhengfangxin z =new zhengfangxin();
       z.setBianchang(4);
       z.setMianji(16);
       z.setZhouchang(16);
       z.mianji();
       z.zhouchang();
}
}