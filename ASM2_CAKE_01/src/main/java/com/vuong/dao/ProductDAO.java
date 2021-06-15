package com.vuong.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.vuong.entity.*;

public interface ProductDAO extends JpaRepository<Product, Integer> {

	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	Page<Product> findAllByNameLike(String keywords, Pageable pageable);

	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();

	// lab6.1
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	List<Product> findByPrice(double minPrice, double maxPrice);

	// lab6.2 tim kiem theo ten sp va phan trang
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);

	//truy van theo loai
	@Query("SELECT o FROM Product o WHERE o.category.id=?1")
	List<Product> findByCategoryId(String id);
	
	//so san pham ban nhieu nhat
	@Query("SELECT new Report(o.product, sum(o.price), count(o.quantity)) " + " FROM OrderDetail o " + " GROUP BY o.product"
			+ " ORDER BY sum(o.quantity) DESC")
	List<Report> getInventoryByOrder();
	//thong ke don hang theo thang
	@Query("SELECT new Report(o.order, sum(o.price), count(o.quantity)) " + " FROM OrderDetail o " + " GROUP BY o.order"
			+ " ORDER BY sum(o.quantity) DESC")
	List<Report> getInventoryByOrder1();
}
