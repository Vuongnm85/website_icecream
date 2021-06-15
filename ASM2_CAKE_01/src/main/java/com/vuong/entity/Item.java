package com.vuong.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
	//1. dữ liệu của món hàng
	Integer id;
	String name;
	String image;
	double price;
	int qty = 1; //2. số lượng mặc định là 1
}

