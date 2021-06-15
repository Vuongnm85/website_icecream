package com.vuong.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vuong.dao.CategoryDAO;
import com.vuong.dao.ProductDAO;
import com.vuong.entity.Category;
import com.vuong.entity.Product;
import com.vuong.service.SessionService;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	CategoryDAO cateDao;

	@RequestMapping("/home/index")
	public String index(Model model) {
		List<Category> b = cateDao.findAll();
		model.addAttribute("cate", b);
		Product item = new Product();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "icream/index";
	}

	@RequestMapping("/product/sort")
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort);
		model.addAttribute("items", items);
		return "icream/kem_lac";
	}

	@RequestMapping("/product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "product/page";
	}

	// lab6.1
	@RequestMapping("/product/search")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dao.findByPrice(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "product/search";
	}

	// lab6.2
	@RequestMapping("/product/search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p, @RequestParam("field") Optional<String> field) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = dao.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);

		return "icream/phanTrangTimKiem";
	}
	@RequestMapping("/product/search-and-page1")
	public String searchAndPage1() {
		return "icream/test_form";
	}
	
	@RequestMapping("/search-cate1")
	public String searchCate1(Model model){
		List<Category> a = cateDao.findAll();
		model.addAttribute("cate", a);
		return"/category/index2";
	}
	@RequestMapping("/search-cate")
	public String searchCate(@RequestParam("cate") String cate, Model model){
		List<Category> b = cateDao.findAll();
		model.addAttribute("cate", b);
		List<Product> a = dao.findByCategoryId(cate);
		model.addAttribute("items", a);
		return"icream/index";
	}
}
