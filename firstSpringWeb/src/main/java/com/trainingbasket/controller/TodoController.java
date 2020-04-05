package com.trainingbasket.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainingbasket.services.TodoServices;

@Controller
public class TodoController {

	@Autowired
	TodoServices todoServices;

	@RequestMapping(value = "/list-todo", method = RequestMethod.GET)
	public String shwoTodos(ModelMap model) {
		model.addAttribute("todos", todoServices.retrieveTodos("GOPAL"));
		return "todo";
	}

	@RequestMapping(value = "addtodo", method = RequestMethod.GET)
	public String addTodo() {
		return "todo";
	}

	@RequestMapping(value = "addtodo", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @RequestParam String user, @RequestParam String desc,
			@RequestParam String targetDate, @RequestParam Boolean isDone) {
		String[] arrDate = targetDate.split("-");
		todoServices.addTodo(user, desc,
				LocalDate.of(Integer.parseInt(arrDate[2]), Integer.parseInt(arrDate[1]), Integer.parseInt(arrDate[0])),
				isDone);
		model.addAttribute("todos", todoServices.retrieveAllTodo());
		return "todo";
	}

	

	@RequestMapping(value = "/deletetodo", method = RequestMethod.POST)
	public String deleteTodo(ModelMap model, @RequestParam Integer id) {
		todoServices.deleteTodo(id);
		model.addAttribute("todos", todoServices.retrieveAllTodo());
		return "todo";
	}

}
