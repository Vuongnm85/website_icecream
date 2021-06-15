package com.vuong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vuong.dao.AccountDAO;
import com.vuong.dao.CategoryDAO;
import com.vuong.dao.OrderDAO;
import com.vuong.dao.OrderDetailDAO;
import com.vuong.dao.ProductDAO;
import com.vuong.entity.Account;
import com.vuong.entity.Category;
import com.vuong.entity.Order;
import com.vuong.entity.OrderDetail;
import com.vuong.entity.Product;
import com.vuong.entity.Report;

@Controller
public class AdminController {
	// tiêm CategoryDAO vào
	@Autowired
	ProductDAO dao; // 1. làm việc với bảng Categories
	@Autowired
	CategoryDAO daoCate;
	@Autowired
	AccountDAO daoAc;
	@Autowired
	OrderDetailDAO orderDeatailDao;
	@Autowired
	OrderDAO ordDao;

	@RequestMapping("/admin/product/index")
	public String indexProduct(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		// 2. lấy ra tất cả các danh mục ...gọi hàm findAll()
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		// return "category/index"; //3. view trang index lên
		return "admin/html/product"; // 3. view trang index lên
	}

	// 2. khi click vào edit...
	@RequestMapping("/admin/product/edit/{id}")
	public String editProduct(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/html/product";
	}

	@RequestMapping("/admin/product/create")
	public String createProduct(Product item) {
		dao.save(item);
		return "redirect:/admin/product/index";
	}

	@RequestMapping("/admin/product/update")
	public String updateProduct(Product item, Model model) {
		dao.save(item);
		Product items = dao.save(item);
		model.addAttribute("item", items);
		return "redirect:/admin/product/edit/" + item.getId();
	}

	@RequestMapping("/admin/product/delete/{id}")
	public String createProduct(@PathVariable("id") Integer id) {
		// 5. xóa danh mục dựa vào id
		dao.deleteById(id);
		return "redirect:/admin/product/index";
	}

	// danh mục

	@RequestMapping("/admin/categories/index")
	public String indexCategory(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		// 2. lấy ra tất cả các danh mục ...gọi hàm findAll()
		List<Category> items = daoCate.findAll();
		model.addAttribute("items", items);
		// return "category/index"; //3. view trang index lên
		return "admin/html/categories"; // 3. view trang index lên
	}

	// 2. khi click vào edit...
	@RequestMapping("/admin/categories/edit/{id}")
	public String editCategory(Model model, @PathVariable("id") String id) {
		Category item = daoCate.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = daoCate.findAll();
		model.addAttribute("items", items);
		return "admin/html/categories";
	}

	@RequestMapping("/admin/categories/create")
	public String createCategory(Category item) {
		daoCate.save(item);
		return "redirect:/admin/categories/index";
	}

	@RequestMapping("/admin/categories/update")
	public String updateCategory(Category item, Model model) {
		daoCate.save(item);
		return "redirect:/admin/categories/edit/" + item.getId();
	}

	@RequestMapping("/admin/categories/delete/{id}")
	public String createCategory(@PathVariable("id") String id) {
		// 5. xóa danh mục dựa vào id
		daoCate.deleteById(id);
		return "redirect:/admin/categories/index";
	}

	// tài khoản

	@RequestMapping("/admin/account/index")
	public String indexAccount(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		// 2. lấy ra tất cả các danh mục ...gọi hàm findAll()
		List<Account> items = daoAc.findAll();
		model.addAttribute("items", items);
		// return "category/index"; //3. view trang index lên
		return "admin/html/account"; // 3. view trang index lên
	}

	// 2. khi click vào edit...
	@RequestMapping("/admin/account/edit/{username}")
	public String editAccount(Model model, @PathVariable("username") String username) {
		Account item = daoAc.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = daoAc.findAll();
		model.addAttribute("items", items);
		return "admin/html/account";
	}

	@RequestMapping("/admin/account/create")
	public String createAccount(Account item) {
		daoAc.save(item);
		return "redirect:/admin/account/index";
	}

	@RequestMapping("/admin/account/update")
	public String updateAccount(Account item, Model model) {
		daoAc.save(item);
		return "redirect:/admin/account/edit/" + item.getUsername();
	}

	@RequestMapping("/admin/account/delete/{username}")
	public String createAccount(@PathVariable("username") String username) {
		// 5. xóa danh mục dựa vào id
		daoAc.deleteById(username);
		return "redirect:/admin/account/index";
	}

	// my account
	@RequestMapping("/admin/myaccount/edit/{username}")
	public String editMyAccount(Model model, @PathVariable("username") String username) {
		Account item = daoAc.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = daoAc.findAll();
		model.addAttribute("items", items);
		return "admin/html/myaccount";
	}

	@RequestMapping("/admin/myaccount/update")
	public String updateMyAccount(Account item, Model model) {
		daoAc.save(item);
		model.addAttribute("message", "Cập nhật tài khoản thành công !!");
		return "redirect:/admin/myaccount/edit/" + item.getUsername();
	}

	// thong ke san pham theo danh muc
	@RequestMapping("/admin/inventory-by-category")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		return "admin/html/thongKe_sanPham";
	}
	//thong ke theo don hang
//	@RequestMapping("/admin/search-ord")
//	public String SearchByOrder(Model model, @RequestParam("order") Integer a) {
//		List<Order> ord = ordDao.findAll();
//		model.addAttribute("ord", ord);
//		List<OrderDetail> items = orderDeatailDao.findByOrder(a);
//		model.addAttribute("items", items);
//		return "category/index2";
//	}
//	@RequestMapping("/admin/search-ord1")
//	public String SearchByOrder1(Model model) {
//		List<Order> ord = ordDao.findAll();
//		model.addAttribute("ord", ord);
//		return "category/index2";
//	}
	@RequestMapping("/admin/inventory-by-order")
	public String inventory1(Model model) {
		List<Report> items = dao.getInventoryByOrder();
		model.addAttribute("items", items);
		return "admin/html/thongKe_luotMua_sanPham";
	}
	@RequestMapping("/admin/inventory-by-order-month")
	public String inventory2(Model model) {
		List<Report> items = dao.getInventoryByOrder1();
		model.addAttribute("items", items);
		return "admin/html/thongKe_donHang_theoThang";
	}
}
