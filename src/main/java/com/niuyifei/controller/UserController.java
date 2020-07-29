package com.niuyifei.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niuyifei.bean.User;
import com.niuyifei.service.UserService;

@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("selUser")
	public String seluser(Model model){
		List<User> list = userService.selUser();
		model.addAttribute("list", list);
		return "list";
	}
}
