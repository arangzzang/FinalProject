package com.project.jobnom.enterprise.model.vo;

public class TestObject {
	private String str;
	private int num;
	public TestObject() {
		// TODO Auto-generated constructor stub
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public TestObject(String str, int num) {
		super();
		this.str = str;
		this.num = num;
	}
	@Override
	public String toString() {
		return "TestObject [str=" + str + ", num=" + num + "]";
	}
	

}
