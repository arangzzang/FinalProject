package com.project.jobnom.enterprise.model.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class TestJMK {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		for(int i=0;i<10;i++) {
			list.add("hi" + i);			
		}
		System.out.println(list);
		
		List<TestObject> list2 = new ArrayList<TestObject>();
		for(int i=0;i<10;i++) {
			TestObject teo = new TestObject("hi"+i, i);
			list2.add(teo);
		}
		System.out.println(list2);
		
		List<HashMap> list3 = new ArrayList<HashMap>();
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("hi", "there");
		
		for(String s : hm.keySet()) {
			System.out.println(s + ":" + hm.get(s));
		}
		list3.add(hm);
		System.out.println(list3);
	}
	
}
