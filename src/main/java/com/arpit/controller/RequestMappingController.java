package com.arpit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class RequestMappingController {

	@RequestMapping(value = "/angular-material", method = RequestMethod.GET)
	public String angularMaterial(ModelMap model) {
		return "angular-material";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
}