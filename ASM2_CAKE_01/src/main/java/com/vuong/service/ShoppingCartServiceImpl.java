package com.vuong.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.vuong.dao.ProductDAO;
import com.vuong.entity.Item;
import com.vuong.entity.Product;
import com.vuong.utils.DB;

//1. nhớ dùng @SessionScope
@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	@Autowired
	ProductDAO dao;
	// 2. dùng HashMap
	Map<Integer, Item> map = new HashMap<>();

//	@Override
//	public Product add(Integer id) {
//		// 3. thêm 1 món hàng dựa mả sản phẩm id
//
//		// 4. kiểm tra id đó có trong giỏ hàng chưa
//		Product item = map.get(id);
//		List<Product> items = dao.findAll();
//		// 5. nếu chưa có trong giỏ hàng
//		if (item == null) {
//			item = items.get(id); // 6. tạo 1 item
//			item.setQty(1); // 7. số lượng là 1
//			map.put(id, item); // 8 thêm vào giỏ hàng
//		} else {
//			// 9. ngược lại nếu có trong giỏ hàng rồi thì tăng số lượng lên 1
//			item.setQty(item.getQty() + 1);
//		}
//		System.out.println(id);
//		return item;
//	}

	@Override
	public Item add(Integer id) {
		Item item = map.get(id);
		List<Product> list = dao.findAll();
		Product p = new Product();
		if (item == null) {
			item = new Item();
			p = list.stream().filter(it -> it.getId() == id).collect(Collectors.toList()).get(0);
			item.setId(p.getId());
			item.setName(p.getName());
			item.setImage(p.getImage());
			item.setPrice(p.getPrice());
			item.setQty(1);
			map.put(id, item);
		}
		else
		{
			item.setQty(item.getQty()+1);
		}
		return item;
	}

	@Override
	public void remove(Integer id) {
		map.remove(id); // 10. xóa 1 món hàng thì dựa vào id
	}

	@Override
	public Item update(Integer id, int qty) {
		// 11. cập nhật số lượng dựa id, qty
		Item item = map.get(id);
		item.setQty(qty);
		return item;
	}

	@Override
	public void clear() {
		map.clear(); // xóa hết trong giỏ hàng

	}

	@Override
	public Collection<Item> getItems() {
		return map.values(); // lấy danh sách các món hàng trong giỏ hàng ra
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item -> item.getPrice() * item.getQty()).sum();
	}
}
