package com.yedam.java.main.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.yedam.java.main.service.MainService;

@Controller
public class MainController {
	@Autowired
	MainService service;
	
	@GetMapping("mainlist")
	public String selectMainList(Model model) {
		model.addAttribute("list", service.getMainList());
		
		return "main/list";
	}
//	등록 - 폼
	@GetMapping("insert")
	public String insertMember(Model model) {
		model.addAttribute("userId", service.getMainList());
		return "main/insertMember";
	}
	
}
