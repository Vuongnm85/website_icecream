package com.vuong.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vuong.entity.*;

public interface CategoryDAO extends JpaRepository<Category, String> {

}
