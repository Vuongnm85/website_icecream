package com.vuong.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vuong.service.CookieService;
import com.vuong.service.MailerService;
import com.vuong.service.ParamService;
import com.vuong.service.SessionService;
import com.vuong.entity.Account;
import com.vuong.bean.MailInfo;
import com.vuong.dao.AccountDAO;

@Controller
public class AccountController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO dao;
	@Autowired
	HttpServletRequest request;
	@Autowired
	MailerService mailer;

	@GetMapping("/account/login")
	public String login1() {
		return "/icream/login";
	}

	@PostMapping("/account/login")
	public String login2(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		boolean remember = paramService.getBoolean("remember", false);

		Optional<Account> account = dao.findById(username);

		if (username.equals(account.get().getUsername())) {
			if (password.equalsIgnoreCase(account.get().getPassword())) {
				sessionService.set("username", username);
				sessionService.set("fullname", account.get().getFullname());
				sessionService.set("photo", account.get().getPhoto());
				if (remember) {
					cookieService.add("user", username, 10);
					cookieService.add("pass", password, 10);
					System.out.println("luu cookie ok");
				} else {
					cookieService.remove("user");
					cookieService.remove("pass");
				}
			} else {
				model.addAttribute("message", "Sai mật khẩu.");
			}
			if (account.get().isAdmin()) {
				return "redirect:/admin/product/index";
			} else {
				return "redirect:/home/index";
			}
		} else {
			model.addAttribute("message", "Tài khoản không tồn tại.");
			System.out.println("Tài khoản không tồn tại.");
		}
		return "/icream/login";
	}

	@RequestMapping("/account/logout")
	public String logout() {
		sessionService.remove("username");
		return "/icream/login";
	}

	@RequestMapping("/account/create")
	public String create(Account item) {
		dao.save(item);
		return "redirect:/category/index";
	}

	@RequestMapping("/account/addAccount")
	public String addAccount() {
		return "/icream/newAccount";
	}

	@RequestMapping("/account/create/addAccount")
	public String createAccount(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("fullname") String fullname, @RequestParam("email") String email, Account item, Model model) {
		item.setUsername(username);
		item.setPassword(password);
		item.setFullname(fullname);
		item.setEmail(email);
		dao.save(item);
		model.addAttribute("message", "Thêm tài khoản thành công!!");
		System.out.print("Thêm thành công");
		return "/icream/newAccount";
	}

//	@RequestMapping("/account/remember")
//	public String rememberPass(@RequestParam("username") String username, @RequestParam("email") String email,
//			Model model, MailInfo mailinfo) {
//
//		Optional<Account> account = dao.findById(username);
//
//		if ((username.equals(account.get().getUsername())) && (email.equals(account.get().getEmail()))) {
//			String user = account.get().getUsername();
//			String pass = account.get().getPassword();
//
//			mailinfo.setSubject(user);
//			mailinfo.setSubject(pass);
//
//			mailer.queue(mailinfo.getTo(), mailinfo.getSubject(), mailinfo.getBody());
//			model.addAttribute("mail", mailinfo);
//
//		} else {
//			model.addAttribute("message", "Sai email");
//			System.out.println("dang nhap that bại");
//		}
//		return "icream/mail";
//	}
//
//	@RequestMapping("/account/remember1")
//	public String a() {
//		return "icream/mail";
//	}

}
