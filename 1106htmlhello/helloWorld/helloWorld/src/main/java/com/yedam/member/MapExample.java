package com.yedam.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sun.tools.javac.util.List;

public class MapExample {
	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("위정아", 80);
		map.put("이소정", 81);
		map.put("이정은", 82);
		
		Map<String, Integer> map2 = new HashMap<String, Integer>();
		map.put("위정아", 82);
		map.put("이소정", 83);
		map.put("이정은", 84);
		
		java.util.List<Map<String , Integer>> list = new ArrayList<Map<String , Integer>>();
		list.add(map);
		list.add(map2);
		
		Gson gson = new GsonBuilder().create();
		
		System.out.println(gson.toJson(list));
		
	}

}
