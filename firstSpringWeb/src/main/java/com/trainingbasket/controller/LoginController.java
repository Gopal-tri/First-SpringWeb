package com.trainingbasket.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainingbasket.services.LoginServices;

@Controller
public class LoginController {

	@Autowired
	LoginServices loginServices;

	@RequestMapping(value = "/")
	public String index() {
		// tring d ="view .jsp";
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(ModelMap map) {
		// Server Date Time
		map.put("date", LocalDateTime.now().toString());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(ModelMap model, @RequestParam String user, @RequestParam String pass) {
		if (loginServices.validateUser(user, pass)) {
			model.put("msg", "Hi " + user + " Welcome to the app");
			return "welcome";
		}
		model.put("errorMsg", "Invalid Credentials givern");
		return "login";
	}
}
