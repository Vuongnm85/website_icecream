package com.vuong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vuong.dao.CategoryDAO;
import com.vuong.dao.ProductDAO;
import com.vuong.entity.Report;

@Controller

public class ReportController {
	@Autowired
	ProductDAO dao;


}
