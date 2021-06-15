package com.vuong.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vuong.dao.*;
import com.vuong.entity.Account;
import com.vuong.entity.*;
import com.vuong.service.ParamService;
import com.vuong.service.SessionService;
import com.vuong.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	ProductDAO productDao;
	@Autowired
	OrderDetailDAO orderDetailDao;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	ParamService paramService;

	@RequestMapping("/cart/view")
	public String view(Model model) {
		double a = cart.getAmount();
		model.addAttribute("amount", a);
		model.addAttribute("cart", cart);
		return "icream/cart";
	}

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);

		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/checkout")
	public String checkout(@RequestParam("address") String address) {
		String username = session.get("username");
		System.out.print(address);
		Account account = null;
		if (accountDao.findById(username).isPresent()) {
			account = accountDao.findById(username).get();
			Order order = new Order();
			order.setAccount(account);
			order.setAddress(address);
			order.setCreateDate(new Date());

			List<OrderDetail> orderDetails = new ArrayList<>();

			for (Item item : cart.getItems()) {
				OrderDetail orderDetail = new OrderDetail();
				orderDetail.setOrder(order);
				productDao.findById(item.getId()).ifPresent(p -> {
					orderDetail.setProduct(p);
				});
				orderDetail.setPrice(item.getPrice());
				orderDetail.setQuantity(item.getQty());
				orderDetails.add(orderDetail);

			}
			order.setOrderDetails(orderDetails);
			orderDao.save(order);

			for (OrderDetail od : orderDetails) {
				orderDetailDao.save(od);
			}
			cart.clear();

		}
		return "redirect:/cart/view";
	}
}
