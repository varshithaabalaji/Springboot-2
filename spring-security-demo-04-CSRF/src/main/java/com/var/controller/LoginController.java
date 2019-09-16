package com.var.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("showMyLoginPage")
	public String showMyLoginPage() {
		
		return "custom-login";
	}
	
	@GetMapping("leaders")
	public String showLeadersPage() {
		return "leaders/leaders-page";
	}
	
	@GetMapping("systems")
	public String showSystemsPage() {
		return "systems/systems-page";
	}
}
