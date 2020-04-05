package com.trainingbasket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.trainingbasket.services.TodoServices;

@Controller
public class TodoController {

	@Autowired
	TodoServices todoServices;
	
	@RequestMapping(value = "/list-todo", method= RequestMethod.GET)
	public String shwoTodos(ModelMap model) {
		model.addAttribute("todos", todoServices.retrieveTodos("GOPAL"));
		return "todo";
		
	}
	
}
