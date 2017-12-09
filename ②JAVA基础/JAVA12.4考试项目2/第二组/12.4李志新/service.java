package com.lizhixin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public interface service {
	void Addto(List<People> list ,Scanner sc);
	//添加信息
	void Inquireall(List<People> list);
	//查询全部
	void queryName(List<People> list,Scanner sc);
	//查询名字
	void querySex(List<People> list,Scanner sc);
	//查询性别
	void queryNum(List<People> list,Scanner sc);
	//查询电话号码
}
