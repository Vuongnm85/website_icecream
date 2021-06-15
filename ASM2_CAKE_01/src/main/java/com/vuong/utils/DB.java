package com.vuong.utils;

import java.util.HashMap;
import java.util.Map;

import com.vuong.entity.*;

public class DB {
	public static Map<Integer, Item> items = new HashMap<>();
	static {
		items.put(1, new Item(1, "Vest 01", "vest01.jpg", 10.0, 0));
		items.put(2, new Item(2, "Vest 02", "vest02.jpg", 20.50, 0));
		items.put(3, new Item(3, "Vest 03", "vest03.jpg", 90.49, 0));
		items.put(4, new Item(4, "Vest 04", "vest04.jpg", 15.55, 0));
		items.put(5, new Item(5, "Vest 05", "vest05.jpg", 8.99, 0));
	}
}
